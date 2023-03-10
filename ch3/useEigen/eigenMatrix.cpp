#include<iostream>
using namespace std;
#include<ctime>
#include<Eigen/Core>
#include<Eigen/Dense>
using namespace Eigen;
#define MATRIX_SIZE 50

int main(int argc, char **argv)
{
    Matrix<float, 2, 3> matrix_23;
    Vector3d v_3d;
    Matrix<float, 3, 1> vf_3f;
    Matrix3d matrix_33 = Matrix3d::Zero();  //3*3,  
    Matrix<double, Dynamic, Dynamic> matrix_dynamic;
    MatrixXf matrix_x;  //Dynamic
    
    matrix_23 << 1, 2, 3, 4, 5, 6;
    cout<<"matrix_23 = \n"<<matrix_23<<endl;
    cout<<"print matrix_23 2 x 3: "<<endl;
    for(int i=0; i<2;i++)
    {
        for(int j=0;j<3;j++)
            cout<<matrix_23(i,j)<<"\t";
        cout << endl;
    }
    
    v_3d << 3, 2, 1;
    vf_3f << 4, 5, 5;
    // visual exchange
    Matrix<double, 2, 1> result = matrix_23.cast<double>() * v_3d;
    cout << "matrix_23 * v_3d = " << result.transpose() << endl;  //transpose: zhuanzhi
    
    Matrix<float, 2, 1> result2 = matrix_23 * vf_3f;
    cout << "matrix_23 * vf_3f = " << result2<<endl;
    
    matrix_33 = Matrix3d::Random();
    cout << "random matrix: \n" << matrix_33<<endl;
    cout << "transpose" << matrix_33.transpose() <<endl;
    cout << "sum : "<< matrix_33.sum() <<endl;
    cout << "trace: " << matrix_33.trace() <<endl;
    cout << "times 10: \n" << 10 * matrix_33<<endl;
    cout << "inverse:\n" << matrix_33.inverse() <<endl;
    cout << "det: " << matrix_33.determinant() << endl;
    
    SelfAdjointEigenSolver<Matrix3d> eigen_slover(matrix_33.transpose() * matrix_33);
    cout << "Eigen Values: \n" << eigen_slover.eigenvalues() <<endl;
    cout << "Eogen vectors =  \n" <<eigen_slover.eigenvectors() <<endl;
    
    Matrix<double, MATRIX_SIZE, MATRIX_SIZE> matrix_NN
        = MatrixXd::Random(MATRIX_SIZE,MATRIX_SIZE);
    matrix_NN = matrix_NN * matrix_NN.transpose();
    Matrix<double, MATRIX_SIZE, 1> v_Nd = MatrixXd::Random(MATRIX_SIZE, 1);
    
    clock_t time_stt = clock();
    Matrix<double, MATRIX_SIZE, 1> x = matrix_NN.inverse() * v_Nd;
    cout << "time of normal inverse is " 
        << 1000 * (clock() - time_stt)/(double)CLOCKS_PER_SEC << "ms" <<endl;
    cout << "x = " << x.transpose() <<endl;
    
    time_stt = clock();
    x = matrix_NN.colPivHouseholderQr().solve(v_Nd);
    cout << "time of QR decomposition is " 
        << 1000 * (clock() - time_stt) / (double)CLOCKS_PER_SEC <<"ms" <<endl;
    cout << "x = " << x.transpose() << endl;
    
    time_stt = clock();
    x = matrix_NN.ldlt().solve(v_Nd);
    cout << "time of ldlt decomposition is " 
        << 1000 * (clock() - time_stt) / (double)CLOCKS_PER_SEC <<"ms" <<endl;
    cout << "x = " << x.transpose() << endl;
    
	return 0;
}


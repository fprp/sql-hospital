#include <stdio.h>
#include <windows.h>
#include <sql.h>
#include <sqlext.h>
#include<sqltypes.h>
#include <iostream>
#include <string.h>

void sqlIAR(SQLHDBC *dbc, char *command){
    SQLHSTMT stmt;
    SQLRETURN ret;
    SQLAllocHandle(SQL_HANDLE_STMT, (*dbc), &stmt);
    ret = SQLExecDirect(stmt,(SQLCHAR *)command,SQL_NTS);
}

void printando(SQLHDBC *dbc, char *command){
    SQLHSTMT stmt;
    SQLRETURN ret;
    SQLLEN indicator[4];
    SQLLEN cpfpaciente;
    SQLCHAR nomepaciente[30]="";
    SQLCHAR telefonepaciente[9]="";
    SQLLEN crm_medico;
    
    int qnt=0;

    stmt=NULL;
    SQLAllocHandle(SQL_HANDLE_STMT, (*dbc), &stmt);
    ret = SQLBindCol(stmt,1,SQL_C_LONG,&cpfpaciente,0,&indicator[0]);
    ret = SQLBindCol(stmt,2,SQL_C_CHAR,nomepaciente,sizeof(nomepaciente),&indicator[1]);
    ret = SQLBindCol(stmt,3,SQL_C_CHAR,telefonepaciente,sizeof(telefonepaciente),&indicator[2]);
    ret = SQLBindCol(stmt,4,SQL_C_LONG,&crm_medico,3,&indicator[3]);
    ret = SQLExecDirect(stmt,(SQLCHAR *)command,SQL_NTS);
    while((ret=SQLFetch(stmt)) != SQL_NO_DATA){
        printf("cpfpaciente: %d nomepaciente: %s telefonepaciente: %s crm_medico: %d\n", cpfpaciente,nomepaciente,telefonepaciente,crm_medico);
        qnt++;
    }
    printf("Numero de linhas retornadas : %d\n", qnt);
}

int main(){
    SQLHENV env;
    SQLHDBC dbc;
    SQLHSTMT stmt;
    SQLRETURN ret;

    char input[200];
    int opcao;
    bool parar = false;

    SQLAllocHandle(SQL_HANDLE_ENV, SQL_NULL_HANDLE, &env);
    SQLSetEnvAttr(env, SQL_ATTR_ODBC_VERSION, (void *) SQL_OV_ODBC3, 0);
    SQLAllocHandle(SQL_HANDLE_DBC, env, &dbc);
    SQLDriverConnect(dbc, NULL, (SQLCHAR*)"DSN=GDI;", SQL_NTS,NULL, 0, NULL, SQL_DRIVER_COMPLETE);

    while(parar != true){
        cout << "0 - Encerrar\n1 - Insercao\n2 - Atualizacao\n3 - Remocao\n4 - Selecao\nDigite sua opcao:" << endl;
        cin >> opcao;
        fflush(stdin);
        switch(opcao){
            case 0:
                cout << "Encerrando... Encerrado!" << endl;
                parar = true;
                break;
            case 1:
                 printf("Digite o comando de insercao:\n");
                 gets(input);
                 sqlIAR(&dbc, input);
                break;
            case 2:
                printf("Digite o comando de atualizacao:\n");
                gets(input);
                sqlIAR(&dbc, input);
                break;
            case 3:
                printf("Digite o comando de remocao:\n");
                gets(input);
                sqlIAR(&dbc, input);
                break;
            case 4:
                char where[50];
                printf("Digite o Where do Select para tabela Paciente:\n");
                strcpy(input,"Select * From paciente");
                gets(where);
                strcat(input,where);
                cout << input << endl;
                printando(&dbc, input);
                break;
            default:
                cout << "Comando invalido!!!" << endl;
                break;
        }
    }
    return 0;
}
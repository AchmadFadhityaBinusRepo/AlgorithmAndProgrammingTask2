#include <stdio.h>
//#include <string.h>
#include <stdlib.h>
#include <ctype.h>

typedef struct {
    char namaMataKuliah[255];
    float nilaiHadir;
    float nilaiTugas;
    float nilaiQuiz;
    float nilaiForum;
    float nilaiUAS;
    float nilaiAkhir;
    char statusGrade;
} Matakuliah;

typedef struct {
    char nim[10];
    char nama[255];
    Matakuliah listMatakuliah[100];
    int totalMatakuliahYangDiambil;
} Mahasiswa ;

Mahasiswa arrayMahasiswa[100];
int lastItemOfArrayMahasiswa = 0;


void inputNamaMatakuliah(Mahasiswa *ptr);

void showNilaiMahasiswaTertentu(Mahasiswa param);

void inputNilaiMataKuliahTertentu(Matakuliah *param);

void hitungNilaiAkhir(Matakuliah *matakuliah);

void tentukanStatusGrade(Matakuliah *matakuliah);

Matakuliah *getMataKuliahYangAkanDiinputNilai(Mahasiswa *ptr);

Mahasiswa *getMahasiswaYangAkanDiinputNilai();

void showMenu();

void eksekusiOpsiMenu(int menu);

void inputDataMahasiswa();

void inputDataNilai();

void lihatNilaiMahasiswa();

void exitProgram();

Mahasiswa getMahasiswaYangAkanDilihatNilainya();

int main() {
    do{
        int pilihanMenu;

        showMenu();
        scanf("%d", &pilihanMenu);
        eksekusiOpsiMenu(pilihanMenu);
    }while(1);
}

void showMenu() {
    system("cls");
    printf("\nSilahkan Pilih Menu");
    printf("\n\t1. Input data Mahasiswa");
    printf("\n\t2. Input nilai Mahasiswa");
    printf("\n\t3. Lihat nilai Mahasiswa dan Status");
    printf("\n\t4. Keluar dari program");
    printf("\nPilihan:");
}

void eksekusiOpsiMenu(int menu) {
    char c;
    fflush(stdin);
    switch (menu) {
        case 1:
            inputDataMahasiswa();
            c = getchar();
            break;
        case 2:
            inputDataNilai();
            c = getchar();
            break;
        case 3:
            lihatNilaiMahasiswa();
            c = getchar();
            break;
        case 4:
            exitProgram();
            c = getchar();
            break;
        default:
            printf("menu tidak tersedia");
            c = getchar();
            break;
    }
}

void inputDataMahasiswa() {
    system("cls");
    fflush(stdin);
    Mahasiswa mahasiswa;
    printf("\nNIM: ");
    scanf("%[^\n]%*c", mahasiswa.nim);
    fflush(stdin);

    printf("\nNama: ");
    scanf("%[^\n]%*c", mahasiswa.nama);
    fflush(stdin);

    mahasiswa.totalMatakuliahYangDiambil=0;
    printf("\nMatakuliah yang diikuti:");
    inputNamaMatakuliah(&mahasiswa);

    arrayMahasiswa[lastItemOfArrayMahasiswa] = mahasiswa;
    lastItemOfArrayMahasiswa++;
}

void inputNamaMatakuliah(Mahasiswa *ptr) {
    char inputLagi;
    do{
        fflush(stdin);
        printf("\nNama Matakuliah %d:",ptr->totalMatakuliahYangDiambil+1);
        scanf("%[^\n]%*c", ptr->listMatakuliah[ptr->totalMatakuliahYangDiambil].namaMataKuliah);
        fflush(stdin);

        printf("Tambah Matakuliah? (Y/N)");
        scanf("%d", &inputLagi);
        ptr->totalMatakuliahYangDiambil++;
    } while (inputLagi == toupper(inputLagi));
}

void inputDataNilai() {
    Mahasiswa *mahasiswa = getMahasiswaYangAkanDiinputNilai();
    Matakuliah *matakuliah = getMataKuliahYangAkanDiinputNilai(mahasiswa);
    inputNilaiMataKuliahTertentu(matakuliah);
    hitungNilaiAkhir(matakuliah);
    tentukanStatusGrade(matakuliah);
}

Mahasiswa *getMahasiswaYangAkanDiinputNilai() {
    system("cls");

    int indexMahasiswa;
    for(int i=0;i<lastItemOfArrayMahasiswa;i++){
        printf("\n%d.\t%s\t%s", i+1, arrayMahasiswa[i].nim, arrayMahasiswa[i].nama);
    }

    printf("\nPilih mahasiswa yang akan diinput nilainya: ");
    scanf("%d", &indexMahasiswa);

    return &(arrayMahasiswa[indexMahasiswa-1]);
}

Matakuliah *getMataKuliahYangAkanDiinputNilai(Mahasiswa *mahasiswa) {
    system("cls");

    int indexMatakuliah;
    for(int i=0;i<mahasiswa->totalMatakuliahYangDiambil;i++){
        printf("\n%d.\t%s", i+1, mahasiswa->listMatakuliah[i].namaMataKuliah);
    }

    printf("\nPilih mata kuliah yang akan diinput nilainya: ");
    scanf("%d", &indexMatakuliah);

    return &(mahasiswa->listMatakuliah[indexMatakuliah-1]);
}

void inputNilaiMataKuliahTertentu(Matakuliah *matakuliah) {
    system("cls");

    printf("\nNilai Hadir:");
    scanf("%f", &matakuliah->nilaiHadir);

    printf("\nNilai Tugas:");
    scanf("%f", &matakuliah->nilaiTugas);

    printf("\nNilai Quiz:");
    scanf("%f", &matakuliah->nilaiQuiz);

    printf("\nNilai Keaktifan Forum:");
    scanf("%f", &matakuliah->nilaiForum);

    printf("\nNilai UAS:");
    scanf("%f", &matakuliah->nilaiUAS);
}

void hitungNilaiAkhir(Matakuliah *matakuliah) {
    float nilaiAkhir = matakuliah->nilaiHadir * 0.1 +
                       matakuliah->nilaiTugas * 0.2 +
                       matakuliah->nilaiQuiz * 0.1 +
                       matakuliah->nilaiForum * 0.1 +
                       matakuliah->nilaiUAS * 0.5;
    matakuliah->nilaiAkhir = nilaiAkhir;
}

void tentukanStatusGrade(Matakuliah *matakuliah) {
    if(matakuliah->nilaiAkhir >= 90){
        matakuliah->statusGrade = 'A';
    } else if (matakuliah->nilaiAkhir <= 89 && matakuliah->nilaiAkhir >= 80){
        matakuliah->statusGrade = 'B';
    } else if (matakuliah->nilaiAkhir <= 79 && matakuliah->nilaiAkhir >= 70){
        matakuliah->statusGrade = 'C';
    } else if (matakuliah->nilaiAkhir <= 69 && matakuliah->nilaiAkhir >= 60){
        matakuliah->statusGrade = 'D';
    } else {
        matakuliah->statusGrade = 'E';
    }
}

void lihatNilaiMahasiswa() {
    Mahasiswa mahasiswa = getMahasiswaYangAkanDilihatNilainya();
    showNilaiMahasiswaTertentu(mahasiswa);
    char c = getchar();
}

Mahasiswa getMahasiswaYangAkanDilihatNilainya() {
    int indexMahasiswa;

    for(int i=0;i<lastItemOfArrayMahasiswa;i++){
        printf("\n%d.\t%s\t%s", i+1, arrayMahasiswa[i].nim, arrayMahasiswa[i].nama);
    }

    printf("\nPilih mahasiswa yang akan dimunculkan nilainya: ");
    scanf("%d", &indexMahasiswa);
    return arrayMahasiswa[indexMahasiswa-1];
}

void showNilaiMahasiswaTertentu(Mahasiswa mahasiswa) {
    system("cls");

    printf("\n%s\t%s", mahasiswa.nim, mahasiswa.nama);
    for(int i=0;i<mahasiswa.totalMatakuliahYangDiambil;i++){
        printf("\n\n%s", mahasiswa.listMatakuliah[i].namaMataKuliah);
        printf("\n\tNilai Hadir: %.2f", mahasiswa.listMatakuliah[i].nilaiHadir);
        printf("\n\tNilai Tugas: %.2f", mahasiswa.listMatakuliah[i].nilaiTugas);
        printf("\n\tNilai Quiz: %.2f", mahasiswa.listMatakuliah[i].nilaiQuiz);
        printf("\n\tNilai Keaktifan Forum: %.2f", mahasiswa.listMatakuliah[i].nilaiForum);
        printf("\n\tNilai UAS: %.2f", mahasiswa.listMatakuliah[i].nilaiUAS);
        printf("\n\tNilai Akhir: %.2f", mahasiswa.listMatakuliah[i].nilaiAkhir);
        printf("\n\tStatus Grade: %c", mahasiswa.listMatakuliah[i].statusGrade);
    }
}

void exitProgram() {

}

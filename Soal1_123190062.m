% Matriks A
A = [3 7 3 1 8 3; 5 10 8 4 2 5; 9 6 20 13 -3 11; 12 9 5 2 7 6; 4 2 7 7 9 12; -9 1 9 -5 14 4];

% Soal 1. a. Vector matriks baru berisi elemen diagonal utama matriks A
B = diag(A);

% Soal 1. b. Vector matriks baru berisi baris kedua hingga empat, kolom kedua hingga tiga
C = A(2:4,2:3);

jawab = 1;

disp('----- SOAL 1 (MATRIKS) -----');

while jawab == 1
    disp(' ');
    disp('Matriks A :');
    disp(A);
    disp('Pilihan yang tersedia :');
    disp('1. (Soal 1.a.) Tampilkan diagonal utama matriks A');
    disp('2. (Soal 1.b.) Tampilkan baris kedua hingga empat,');
    disp('    kolom kedua hingga tiga');
    pilih = input('Masukkan pilihan : ');
    switch pilih
        case (1) % Menampilkan hasil dari soal 1.a.
            disp(' '), disp('(Soal 1.a.) Diagonal utama matriks A'), disp(B)
        case (2) % Menampilkan hasil dari soal 1.b.
            disp(' '), disp('(Soal 1.b.) Baris kedua hingga empat, kolom kedua hingga tiga'), disp(C)
        otherwise
            disp(' '), disp('Pilihan tidak tersedia!'), disp(' ');
    end
    jawab = input('Ulangi(1=Iya | 0=Tidak)? ');
end

disp(' '), disp('SELESAI');
PROGRAM TerbimbingDua;
VAR	
	{tambahkan variabel disini}

	function konversiIDR(money:real; flag:string):real;
	{mengembalikan nilai IDR dari money, sesuai dengan flag ‘EUR’/’USD’/ 	 ’JPY’}

	procedure olahData(var rata2IDR:real);
	{IS. -
	 Proses: menerima input nilai uang dan mata uangnya (USD/EUR/JPY) secara berulang, sampai uang < 0 atau mata uang tidak valid
	 FS. menampilkan nilai IDR dari uang di setiap kali proses input, dan variabel rata2IDR berisi rata-rata dari nilai IDR yang diperoleh}
BEGIN
{Panggil procedure olahData}

{tampilkan hasil rata-rata nilai IDR disini}

END.

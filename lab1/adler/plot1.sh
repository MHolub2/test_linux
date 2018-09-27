
set terminal qt 
set output "data_3.1.jpg"
set xlabel "Number symbols"
set ylabel "Time(us)"

plot "output_final.txt" using 1:2 title "-O0" with lines, \
	"output_final.txt" using 1:3 title "-O1" with lines, \
	"output_final.txt" using 1:4 title "-02" with lines, \
	"output_final.txt" using 1:5 title "-03" with lines, \
	"output_final.txt" using 1:6 title "-0s" with lines
pause -1 "end"

clean:
	rm -f *.log
	rm -f *.eps
	rm -f *.[0-9]
	rm -f *.mpx
	rm -f *.mps
	rm -f *.pdf

eps:
	mpost -s 'prologues=3"' -s 'outputtemplate="%j.%o"' one_period.mp
	mpost -s 'prologues=3"' -s 'outputtemplate="%j.%o"' two_period.mp
	mpost -s 'prologues=3"' -s 'outputtemplate="%j.%o"' three_period.mp

pdf:
	mpost -s 'prologues=3"' -s 'outputtemplate="%j.%o"' one_period.mp
	mpost -s 'prologues=3"' -s 'outputtemplate="%j.%o"' two_period.mp
	mpost -s 'prologues=3"' -s 'outputtemplate="%j.%o"' three_period.mp
	epstopdf one_period.eps
	epstopdf two_period.eps
	epstopdf three_period.eps

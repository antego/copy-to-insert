COPY permissions (ship, name, value) FROM stdin;
admin	admin	true
admin	browse_as	true
\.

COPY x (a, b, c, d, e) from stdin;
9999	\N	\\N	\NN	\N
10000	21	31	41	51
\.

COPY x (b, d) from stdin;
1	test_1
\.

COPY x (b, d) from stdin;
2	test_2
3	test_3
4	test_4
5	test_5
\.

COPY x (b, c, d, e) from stdin with oids delimiter ',' null 'x';
500000,x,45,80,90
500001,x,\x,\\x,\\\x
500002,x,\,,\\\,,\\
\.
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var343 0)
(declare-sort var2550 0)
(declare-sort var1001 0)
(declare-sort var529 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var529_thisNode/385872336 () var1001)
(declare-fun setLength/1649856911 (var1001 Int) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var343 var343)
(declare-const null-String String)
(declare-const var267 var343) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.AbstractCompiler 
(assert (not (= var267 null-var343)))
(declare-const var944 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var944 null-String)))
(assert true)
(define-const var1384 Int (indexOf/-1037706067 var944 46)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
(define-const var512 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if i1 != $i5 goto $r8 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i1) 
(assert (not (= var1384 var512))) ; Cond: i1 != $i5 
(assert (not (and true (and (>= 0 0) (>= (str.len var944) var1384) (>= var1384 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var529_thisNode/385872336=([], com.google.javascript.rhino.Node), setLength/1649856911=([com.google.javascript.rhino.Node, int], void), length/-134980193=([java.lang.String], int)}
; {var343=com.google.javascript.jscomp.AbstractCompiler, var267=r3, var944=r0, var2550=null_type, var1384=i1, var512=$i5, var3467=$r8, var1712=$r1, var2348=$z0, var1001=com.google.javascript.rhino.Node, var529=com.google.javascript.rhino.IR, var919=r9, var1955=i2, var3276=$i3}
; {com.google.javascript.jscomp.AbstractCompiler=var343, r3=var267, r0=var944, null_type=var2550, i1=var1384, $i5=var512, $r8=var3467, $r1=var1712, $z0=var2348, com.google.javascript.rhino.Node=var1001, com.google.javascript.rhino.IR=var529, r9=var919, i2=var1955, $i3=var3276}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: int length()>": 1}
;stmts r3 := @parameter0: com.google.javascript.jscomp.AbstractCompiler;	r0 := @parameter1: java.lang.String;	i1 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	$i5 = (int) -1;	if i1 != $i5 goto $r8 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i1);	$r8 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i1);	$r1 = "this";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>($r8);	if $z0 == 0 goto $r2 = "super";	r9 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node thisNode()>();	goto [?= virtualinvoke r9.<com.google.javascript.rhino.Node: void setLength(int)>(i1)];	virtualinvoke r9.<com.google.javascript.rhino.Node: void setLength(int)>(i1);	i2 = i1 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int length()>();	if i1 >= $i3 goto return r9;	return r9
;block_num 6
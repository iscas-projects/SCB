(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3249 0)
(declare-sort var3238 0)
(declare-sort var3960 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun val$s/1129927112 (var3249) String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun val$result/1129927112 (var3249) var3238)
(declare-fun var3238_add/328494887 (var3238 var3960) Bool)
(declare-fun cast-from-__Array__Int__String__-to-var3960 ((Array Int String)) var3960)
(declare-const null-var3249 var3249)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3173 var3249) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$9 
(assert (not (= var3173 null-var3249)))
(declare-const var2993 (Array Int Int)) ; Statement: r0 := @parameter0: int[] 
(assert (not (= var2993 null-__Array__Int__Int__)))
(define-const var2189 Int (getLength-Arr-Int-1 var2993)) ; Statement: $i0 = lengthof r0 
(define-const var299 Int (div var2189 2)) ; Statement: $i1 = $i0 / 2 
(define-const var2707 (Array Int String) arr-String-init) ; Statement: r1 = newarray (java.lang.String)[$i1] 
(define-const var2412 Int 0) ; Statement: i10 = 0 
(assert true) ; Non Conditional
(define-const var3260 Int (getLength-Arr-String-1 var2707)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i10 >= $i2 goto $r3 = r2.<com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$9: java.util.List val$result> 
(assert (not (>= var2412 var3260))) ; Negate: Cond: i10 >= $i2  
(define-const var683 Int (* 2 var2412)) ; Statement: $i3 = 2 * i10 
(define-const var1623 Int (select var2993 var683)) ; Statement: $i4 = r0[$i3] 
 ; Statement: if $i4 < 0 goto i10 = i10 + 1 
(assert (not (< var1623 0))) ; Negate: Cond: $i4 < 0  
(define-const var117 String (val$s/1129927112 var3173)) ; Statement: $r4 = r2.<com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$9: java.lang.String val$s> 
(define-const var653 Int (* 2 var2412)) ; Statement: $i5 = 2 * i10 
(define-const var1609 Int (select var2993 var653)) ; Statement: $i9 = r0[$i5] 
(define-const var900 Int (* 2 var2412)) ; Statement: $i6 = 2 * i10 
(define-const var1424 Int (+ var900 1)) ; Statement: $i7 = $i6 + 1 
(define-const var993 Int (select var2993 var1424)) ; Statement: $i8 = r0[$i7] 
(assert (not (and true (and (>= var1609 0) (>= (str.len var117) var993) (>= var993 var1609)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-Int-1=([int[]], int), arr-String-init=([], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), val$s/1129927112=([com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$9], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String), val$result/1129927112=([com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$9], java.util.List), var3238_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-__Array__Int__String__-to-var3960=([java.lang.String[]], java.lang.Object)}
; {var3249=com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$9, var3173=r2, var2993=r0, var2189=$i0, var299=$i1, var2707=r1, var2412=i10, var3260=$i2, var683=$i3, var1623=$i4, var117=$r4, var653=$i5, var1609=$i9, var900=$i6, var1424=$i7, var993=$i8, var642=$r5, var3238=java.util.List, var1664=$r3, var3960=java.lang.Object}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$9=var3249, r2=var3173, r0=var2993, $i0=var2189, $i1=var299, r1=var2707, i10=var2412, $i2=var3260, $i3=var683, $i4=var1623, $r4=var117, $i5=var653, $i9=var1609, $i6=var900, $i7=var1424, $i8=var993, $r5=var642, java.util.List=var3238, $r3=var1664, java.lang.Object=var3960}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$9;	r0 := @parameter0: int[];	$i0 = lengthof r0;	$i1 = $i0 / 2;	r1 = newarray (java.lang.String)[$i1];	i10 = 0;	$i2 = lengthof r1;	if i10 >= $i2 goto $r3 = r2.<com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$9: java.util.List val$result>;	$i3 = 2 * i10;	$i4 = r0[$i3];	if $i4 < 0 goto i10 = i10 + 1;	$r4 = r2.<com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$9: java.lang.String val$s>;	$i5 = 2 * i10;	$i9 = r0[$i5];	$i6 = 2 * i10;	$i7 = $i6 + 1;	$i8 = r0[$i7];	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String substring(int,int)>($i9, $i8);	r1[i10] = $r5;	i10 = i10 + 1;	goto [?= $i2 = lengthof r1];	$i2 = lengthof r1;	if i10 >= $i2 goto $r3 = r2.<com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$9: java.util.List val$result>;	$r3 = r2.<com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$9: java.util.List val$result>;	interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>(r1);	return
;block_num 7
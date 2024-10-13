(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var227 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/-897720134 (var227) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun first/55237717 (var227) var227)
(declare-fun isGetProp/-1072994147 (var227) Bool)
(declare-fun getQualifiedNameForGetProp/2144673950 (var227 Int) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var227 var227)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var314 var227) ; Statement: r0 := @this: com.google.javascript.rhino.Node 
(assert (not (= var314 null-var227)))
(declare-const var2562 Int) ; Statement: i4 := @parameter0: int 
(assert (not (= var2562 null-Int)))
(assert true)
(define-const var2152 String (getString/-897720134 var314)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var69 Int (length/-134980193 var2152)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3595 Int (+ 1 var69)) ; Statement: $i1 = 1 + $i0 
(define-const var1419 Int (+ var2562 var3595)) ; Statement: i5 = i4 + $i1 
(define-const var1853 var227 (first/55237717 var314)) ; Statement: $r2 = r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node first> 
(assert true)
(define-const var3083 Bool (isGetProp/-1072994147 var1853)) ; Statement: $z0 = virtualinvoke $r2.<com.google.javascript.rhino.Node: boolean isGetProp()>() 
 ; Statement: if $z0 == 0 goto $r3 = r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node first> 
(assert (not (= (ite var3083 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1636 var227 (first/55237717 var314)) ; Statement: $r7 = r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node first> 
(assert true)
(define-const var3848 String (getQualifiedNameForGetProp/2144673950 var1636 var1419)) ; Statement: r8 = virtualinvoke $r7.<com.google.javascript.rhino.Node: java.lang.StringBuilder getQualifiedNameForGetProp(int)>(i5) 
 ; Statement: if r8 != null goto $r6 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(assert (not (= var3848 null-String))) ; Cond: r8 != null 
(assert true)
(define-const var2120 String (append/-1166366385 var3848 46)) ; Statement: $r6 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var3848!1 String)
(assert (str.prefixof var3848 var3848!1))
(assert true)
;(assert (append/672562846 var2120 var2152)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2120!1 String)
(assert (= var2120!1 (str.++ var2120 var2152)))
 ; Statement: return r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), length/-134980193=([java.lang.String], int), first/55237717=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), isGetProp/-1072994147=([com.google.javascript.rhino.Node], boolean), getQualifiedNameForGetProp/2144673950=([com.google.javascript.rhino.Node, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var227=com.google.javascript.rhino.Node, var314=r0, var2562=i4, var2152=r1, var69=$i0, var3595=$i1, var1419=i5, var1853=$r2, var3083=$z0, var1636=$r7, var3848=r8, var2120=$r6}
; {com.google.javascript.rhino.Node=var227, r0=var314, i4=var2562, r1=var2152, $i0=var69, $i1=var3595, i5=var1419, $r2=var1853, $z0=var3083, $r7=var1636, r8=var3848, $r6=var2120}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.rhino.Node;	i4 := @parameter0: int;	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = 1 + $i0;	i5 = i4 + $i1;	$r2 = r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node first>;	$z0 = virtualinvoke $r2.<com.google.javascript.rhino.Node: boolean isGetProp()>();	if $z0 == 0 goto $r3 = r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node first>;	$r7 = r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node first>;	r8 = virtualinvoke $r7.<com.google.javascript.rhino.Node: java.lang.StringBuilder getQualifiedNameForGetProp(int)>(i5);	if r8 != null goto $r6 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r6 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	return r8
;block_num 3
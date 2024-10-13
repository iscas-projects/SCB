(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1438 0)
(declare-sort var3294 0)
(declare-sort var1503 0)
(declare-sort var3767 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun nameCount/-2002398492 (var1438) Int)
(declare-fun prefix/-2002398492 (var1438) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun length/-171891354 (String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3294_isKeyword/786132939 (String) Bool)
(declare-fun reservedNames/-2002398492 (var1438) var1503)
(declare-fun var1503_contains/1636690605 (var1503 var3767) Bool)
(declare-fun cast-from-String-to-var3767 (String) var3767)
(declare-fun var1438_isBadName/2080783458 (String) Bool)
(declare-const null-var1438 var1438)
(declare-const var1841 var1438) ; Statement: r0 := @this: com.google.javascript.jscomp.DefaultNameGenerator 
(assert (not (= var1841 null-var1438)))
(assert true) ; Non Conditional
(define-const var1337 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1337)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1337!1 String)
(assert (= var1337!1 ""))
(define-const var3742 Int (nameCount/-2002398492 var1841)) ; Statement: $i9 = r0.<com.google.javascript.jscomp.DefaultNameGenerator: int nameCount> 
(define-const var3610 Int var3742) ; Statement: i10 = $i9 
(define-const var2911 String (prefix/-2002398492 var1841)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.DefaultNameGenerator: java.lang.String prefix> 
(assert true)
(define-const var1030 Bool (isEmpty/-1285796103 var2911)) ; Statement: $z3 = virtualinvoke $r13.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z3 != 0 goto $i0 = virtualinvoke $r14.<java.lang.StringBuilder: int length()>() 
(assert (not (= (ite var1030 1 0) 0))) ; Cond: $z3 != 0 
(assert true)
(define-const var1140 Int (length/-171891354 var1337!1)) ; Statement: $i0 = virtualinvoke $r14.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 != 0 goto (branch) 
(assert (not (= var1140 0))) ; Cond: $i0 != 0 
 ; Statement: if i10 <= 0 goto $i1 = r0.<com.google.javascript.jscomp.DefaultNameGenerator: int nameCount> 
(assert (<= var3610 0)) ; Cond: i10 <= 0 
(define-const var2928 Int (nameCount/-2002398492 var1841)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.DefaultNameGenerator: int nameCount> 
(define-const var159 Int (+ var2928 1)) ; Statement: $i2 = $i1 + 1 
(declare-const var1841!1 var1438)
(assert (not (= var1841!1 null-var1438)))
(assert (= (nameCount/-2002398492 var1841!1) var159)) ; Statement: r0.<com.google.javascript.jscomp.DefaultNameGenerator: int nameCount> = $i2 
(assert true)
(define-const var3071 String (toString/-2075883882 var1337!1)) ; Statement: r1 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1989 Bool (var3294_isKeyword/786132939 var3071)) ; Statement: $z0 = staticinvoke <com.google.javascript.rhino.TokenStream: boolean isKeyword(java.lang.String)>(r1) 
 ; Statement: if $z0 != 0 goto $r14 = new java.lang.StringBuilder 
(assert (not (not (= (ite var1989 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var333 var1503 (reservedNames/-2002398492 var1841!1)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.DefaultNameGenerator: java.util.Set reservedNames> 
(define-const var1825 Bool (var1503_contains/1636690605 var333 (cast-from-String-to-var3767 var3071))) ; Statement: $z1 = interfaceinvoke $r2.<java.util.Set: boolean contains(java.lang.Object)>(r1) 
 ; Statement: if $z1 != 0 goto $r14 = new java.lang.StringBuilder 
(assert (not (not (= (ite var1825 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var749 Bool (var1438_isBadName/2080783458 var3071)) ; Statement: $z2 = staticinvoke <com.google.javascript.jscomp.DefaultNameGenerator: boolean isBadName(java.lang.String)>(r1) 
 ; Statement: if $z2 != 0 goto $r14 = new java.lang.StringBuilder 
(assert (not (not (= (ite var749 1 0) 0)))) ; Negate: Cond: $z2 != 0  
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), nameCount/-2002398492=([com.google.javascript.jscomp.DefaultNameGenerator], int), prefix/-2002398492=([com.google.javascript.jscomp.DefaultNameGenerator], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), length/-171891354=([java.lang.StringBuilder], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3294_isKeyword/786132939=([java.lang.String], boolean), reservedNames/-2002398492=([com.google.javascript.jscomp.DefaultNameGenerator], java.util.Set), var1503_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var3767=([java.lang.String], java.lang.Object), var1438_isBadName/2080783458=([java.lang.String], boolean)}
; {var1438=com.google.javascript.jscomp.DefaultNameGenerator, var1841=r0, var1337=$r14, var3742=$i9, var3610=i10, var2911=$r13, var1030=$z3, var1140=$i0, var2928=$i1, var159=$i2, var3071=r1, var3294=com.google.javascript.rhino.TokenStream, var1989=$z0, var1503=java.util.Set, var333=$r2, var3767=java.lang.Object, var1825=$z1, var749=$z2}
; {com.google.javascript.jscomp.DefaultNameGenerator=var1438, r0=var1841, $r14=var1337, $i9=var3742, i10=var3610, $r13=var2911, $z3=var1030, $i0=var1140, $i1=var2928, $i2=var159, r1=var3071, com.google.javascript.rhino.TokenStream=var3294, $z0=var1989, java.util.Set=var1503, $r2=var333, java.lang.Object=var3767, $z1=var1825, $z2=var749}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.DefaultNameGenerator;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$i9 = r0.<com.google.javascript.jscomp.DefaultNameGenerator: int nameCount>;	i10 = $i9;	$r13 = r0.<com.google.javascript.jscomp.DefaultNameGenerator: java.lang.String prefix>;	$z3 = virtualinvoke $r13.<java.lang.String: boolean isEmpty()>();	if $z3 != 0 goto $i0 = virtualinvoke $r14.<java.lang.StringBuilder: int length()>();	$i0 = virtualinvoke $r14.<java.lang.StringBuilder: int length()>();	if $i0 != 0 goto (branch);	if i10 <= 0 goto $i1 = r0.<com.google.javascript.jscomp.DefaultNameGenerator: int nameCount>;	$i1 = r0.<com.google.javascript.jscomp.DefaultNameGenerator: int nameCount>;	$i2 = $i1 + 1;	r0.<com.google.javascript.jscomp.DefaultNameGenerator: int nameCount> = $i2;	r1 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$z0 = staticinvoke <com.google.javascript.rhino.TokenStream: boolean isKeyword(java.lang.String)>(r1);	if $z0 != 0 goto $r14 = new java.lang.StringBuilder;	$r2 = r0.<com.google.javascript.jscomp.DefaultNameGenerator: java.util.Set reservedNames>;	$z1 = interfaceinvoke $r2.<java.util.Set: boolean contains(java.lang.Object)>(r1);	if $z1 != 0 goto $r14 = new java.lang.StringBuilder;	$z2 = staticinvoke <com.google.javascript.jscomp.DefaultNameGenerator: boolean isBadName(java.lang.String)>(r1);	if $z2 != 0 goto $r14 = new java.lang.StringBuilder;	return r1
;block_num 8
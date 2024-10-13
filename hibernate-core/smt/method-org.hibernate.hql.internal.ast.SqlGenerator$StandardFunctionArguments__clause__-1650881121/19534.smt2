(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var630 0)
(declare-sort var1255 0)
(declare-sort var3848 0)
(declare-sort var528 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun argInd/-1187886962 (var630) Int)
(declare-fun args/-1187886962 (var630) var3848)
(declare-fun var3848_size/-959786421 (var3848) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3848_get/-1216255739 (var3848 Int) var528)
(declare-fun cast-from-var528-to-String (var528) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3848_set/-1241329960 (var3848 Int var528) var528)
(declare-fun cast-from-String-to-var528 (String) var528)
(declare-const null-var630 var630)
(declare-const null-String String)
(declare-const var462 var630) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.SqlGenerator$StandardFunctionArguments 
(assert (not (= var462 null-var630)))
(declare-const var130 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var130 null-String)))
(define-const var2120 Int (argInd/-1187886962 var462)) ; Statement: $i0 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$StandardFunctionArguments: int argInd> 
(define-const var3339 var3848 (args/-1187886962 var462)) ; Statement: $r1 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$StandardFunctionArguments: java.util.List args> 
(define-const var3696 Int (var3848_size/-959786421 var3339)) ; Statement: $i1 = interfaceinvoke $r1.<java.util.List: int size()>() 
 ; Statement: if $i0 != $i1 goto $r3 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$StandardFunctionArguments: java.util.List args> 
(assert (not (= var2120 var3696))) ; Cond: $i0 != $i1 
(define-const var1088 var3848 (args/-1187886962 var462)) ; Statement: $r3 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$StandardFunctionArguments: java.util.List args> 
(define-const var3721 Int (argInd/-1187886962 var462)) ; Statement: $i2 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$StandardFunctionArguments: int argInd> 
(define-const var3041 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3041)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3041!1 String)
(assert (= var3041!1 ""))
(define-const var3815 var3848 (args/-1187886962 var462)) ; Statement: $r4 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$StandardFunctionArguments: java.util.List args> 
(define-const var2866 Int (argInd/-1187886962 var462)) ; Statement: $i3 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$StandardFunctionArguments: int argInd> 
(define-const var1283 var528 (var3848_get/-1216255739 var3815 var2866)) ; Statement: $r5 = interfaceinvoke $r4.<java.util.List: java.lang.Object get(int)>($i3) 
(define-const var1569 String (cast-from-var528-to-String var1283)) ; Statement: $r6 = (java.lang.String) $r5 
(assert true)
(define-const var968 String (append/672562846 var3041!1 var1569)) ; Statement: $r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3041!2 String)
(assert (= var3041!2 (str.++ var3041!1 var1569)))
(assert true)
(define-const var2641 String (append/672562846 var968 var130)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var968!1 String)
(assert (= var968!1 (str.++ var968 var130)))
(assert true)
(define-const var1915 String (toString/-2075883882 var2641)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3848_set/-1241329960 var1088 var3721 (cast-from-String-to-var528 var1915))) ; Statement: interfaceinvoke $r3.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i2, $r10) 

(declare-const var1088!1 var3848)
(declare-const var3721!1 Int)
(declare-const var1915!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {argInd/-1187886962=([org.hibernate.hql.internal.ast.SqlGenerator$StandardFunctionArguments], int), args/-1187886962=([org.hibernate.hql.internal.ast.SqlGenerator$StandardFunctionArguments], java.util.List), var3848_size/-959786421=([java.util.List], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3848_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var528-to-String=([java.lang.Object], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3848_set/-1241329960=([java.util.List, int, java.lang.Object], java.lang.Object), cast-from-String-to-var528=([java.lang.String], java.lang.Object)}
; {var630=org.hibernate.hql.internal.ast.SqlGenerator$StandardFunctionArguments, var462=r0, var130=r7, var1255=null_type, var2120=$i0, var3848=java.util.List, var3339=$r1, var3696=$i1, var1088=$r3, var3721=$i2, var3041=$r2, var3815=$r4, var2866=$i3, var528=java.lang.Object, var1283=$r5, var1569=$r6, var968=$r8, var2641=$r9, var1915=$r10}
; {org.hibernate.hql.internal.ast.SqlGenerator$StandardFunctionArguments=var630, r0=var462, r7=var130, null_type=var1255, $i0=var2120, java.util.List=var3848, $r1=var3339, $i1=var3696, $r3=var1088, $i2=var3721, $r2=var3041, $r4=var3815, $i3=var2866, java.lang.Object=var528, $r5=var1283, $r6=var1569, $r8=var968, $r9=var2641, $r10=var1915}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.SqlGenerator$StandardFunctionArguments;	r7 := @parameter0: java.lang.String;	$i0 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$StandardFunctionArguments: int argInd>;	$r1 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$StandardFunctionArguments: java.util.List args>;	$i1 = interfaceinvoke $r1.<java.util.List: int size()>();	if $i0 != $i1 goto $r3 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$StandardFunctionArguments: java.util.List args>;	$r3 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$StandardFunctionArguments: java.util.List args>;	$i2 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$StandardFunctionArguments: int argInd>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$StandardFunctionArguments: java.util.List args>;	$i3 = r0.<org.hibernate.hql.internal.ast.SqlGenerator$StandardFunctionArguments: int argInd>;	$r5 = interfaceinvoke $r4.<java.util.List: java.lang.Object get(int)>($i3);	$r6 = (java.lang.String) $r5;	$r8 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r3.<java.util.List: java.lang.Object set(int,java.lang.Object)>($i2, $r10);	return
;block_num 3
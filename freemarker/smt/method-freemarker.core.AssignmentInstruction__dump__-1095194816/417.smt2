(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2193 0)
(declare-sort var3541 0)
(declare-sort var724 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun scope/193344410 (var2193) Int)
(declare-fun var3541_getDirectiveName/-163274331 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun namespaceExp/193344410 (var2193) var724)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2193 var2193)
(declare-const null-Bool Bool)
(declare-const null-var724 var724)
(declare-const var1664 var2193) ; Statement: r1 := @this: freemarker.core.AssignmentInstruction 
(assert (not (= var1664 null-var2193)))
(declare-const var1089 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1089 null-Bool)))
(define-const var242 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var242)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var242!1 String)
(assert (= var242!1 ""))
 ; Statement: if z0 == 0 goto $i0 = r1.<freemarker.core.AssignmentInstruction: int scope> 
(assert (= (ite var1089 1 0) 0)) ; Cond: z0 == 0 
(define-const var3837 Int (scope/193344410 var1664)) ; Statement: $i0 = r1.<freemarker.core.AssignmentInstruction: int scope> 
(define-const var3979 String (var3541_getDirectiveName/-163274331 var3837)) ; Statement: $r2 = staticinvoke <freemarker.core.Assignment: java.lang.String getDirectiveName(int)>($i0) 
(assert true)
;(assert (append/672562846 var242!1 var3979)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var242!2 String)
(assert (= var242!2 (str.++ var242!1 var3979)))
 ; Statement: if z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-container") 
(assert (= (ite var1089 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (append/672562846 var242!2 "-container")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-container") 
(declare-const var242!3 String)
(assert (= var242!3 (str.++ var242!2 "-container")))
(assert true) ; Non Conditional
(define-const var1360 var724 (namespaceExp/193344410 var1664)) ; Statement: $r3 = r1.<freemarker.core.AssignmentInstruction: freemarker.core.Expression namespaceExp> 
 ; Statement: if $r3 == null goto (branch) 
(assert (= var1360 null-var724)) ; Cond: $r3 == null 
 ; Statement: if z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1089 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var3136 String (toString/-2075883882 var242!3)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), scope/193344410=([freemarker.core.AssignmentInstruction], int), var3541_getDirectiveName/-163274331=([int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), namespaceExp/193344410=([freemarker.core.AssignmentInstruction], freemarker.core.Expression), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2193=freemarker.core.AssignmentInstruction, var1664=r1, var1089=z0, var242=$r0, var3837=$i0, var3541=freemarker.core.Assignment, var3979=$r2, var724=freemarker.core.Expression, var1360=$r3, var3136=$r4}
; {freemarker.core.AssignmentInstruction=var2193, r1=var1664, z0=var1089, $r0=var242, $i0=var3837, freemarker.core.Assignment=var3541, $r2=var3979, freemarker.core.Expression=var724, $r3=var1360, $r4=var3136}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.AssignmentInstruction;	z0 := @parameter0: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $i0 = r1.<freemarker.core.AssignmentInstruction: int scope>;	$i0 = r1.<freemarker.core.AssignmentInstruction: int scope>;	$r2 = staticinvoke <freemarker.core.Assignment: java.lang.String getDirectiveName(int)>($i0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	if z0 == 0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-container");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-container");	$r3 = r1.<freemarker.core.AssignmentInstruction: freemarker.core.Expression namespaceExp>;	if $r3 == null goto (branch);	if z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 6
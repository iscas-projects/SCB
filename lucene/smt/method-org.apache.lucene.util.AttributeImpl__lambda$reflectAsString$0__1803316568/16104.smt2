(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3917 0)
(declare-sort var3486 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-171891354 (String) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun append/-1031950772 (String var3486) String)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3486 var3486)
(declare-const var903 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var903 null-String)))
(declare-const var694 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var694 null-Bool)))
(declare-const var2047 ClassObject) ; Statement: r5 := @parameter2: java.lang.Class 
(assert (not (= var2047 null-ClassObject)))
(declare-const var1647 String) ; Statement: r1 := @parameter3: java.lang.String 
(assert (not (= var1647 null-String)))
(declare-const var780 var3486) ; Statement: r3 := @parameter4: java.lang.Object 
(assert (not (= var780 null-var3486)))
(assert true)
(define-const var2681 Int (length/-171891354 var903)) ; Statement: $i0 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto (branch) 
(assert (<= var2681 0)) ; Cond: $i0 <= 0 
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(assert (= (ite var694 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var3542 String (append/672562846 var903 var1647)) ; Statement: $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var903!1 String)
(assert (= var903!1 (str.++ var903 var1647)))
(assert true)
(define-const var1921 String (append/-1166366385 var3542 61)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(61) 
(declare-const var3542!1 String)
(assert (str.prefixof var3542 var3542!1))
 ; Statement: if r3 != null goto $r8 = r3 
(assert (not (= var780 null-var3486))) ; Cond: r3 != null 
(define-const var3730 var3486 var780) ; Statement: $r8 = r3 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1031950772 var1921 var3730)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var1921!1 String)
(assert (str.prefixof var1921 var1921!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-171891354=([java.lang.StringBuilder], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder)}
; {var903=r0, var694=z0, var2047=r5, var1647=r1, var3917=null_type, var3486=java.lang.Object, var780=r3, var2681=$i0, var3542=$r2, var1921=$r4, var3730=$r8}
; {r0=var903, z0=var694, r5=var2047, r1=var1647, null_type=var3917, java.lang.Object=var3486, r3=var780, $i0=var2681, $r2=var3542, $r4=var1921, $r8=var3730}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	r5 := @parameter2: java.lang.Class;	r1 := @parameter3: java.lang.String;	r3 := @parameter4: java.lang.Object;	$i0 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto (branch);	if z0 == 0 goto $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(61);	if r3 != null goto $r8 = r3;	$r8 = r3;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	return
;block_num 5
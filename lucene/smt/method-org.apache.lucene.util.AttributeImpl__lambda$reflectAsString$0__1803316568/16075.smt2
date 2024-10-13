(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2354 0)
(declare-sort var175 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-171891354 (String) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun cast-from-String-to-var175 (String) var175)
(declare-fun append/-1031950772 (String var175) String)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-ClassObject ClassObject)
(declare-const null-var175 var175)
(declare-const var3481 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3481 null-String)))
(declare-const var1462 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1462 null-Bool)))
(declare-const var1915 ClassObject) ; Statement: r5 := @parameter2: java.lang.Class 
(assert (not (= var1915 null-ClassObject)))
(declare-const var3531 String) ; Statement: r1 := @parameter3: java.lang.String 
(assert (not (= var3531 null-String)))
(declare-const var981 var175) ; Statement: r3 := @parameter4: java.lang.Object 
(assert (not (= var981 null-var175)))
(assert true)
(define-const var1447 Int (length/-171891354 var3481)) ; Statement: $i0 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto (branch) 
(assert (<= var1447 0)) ; Cond: $i0 <= 0 
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(assert (= (ite var1462 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1773 String (append/672562846 var3481 var3531)) ; Statement: $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3481!1 String)
(assert (= var3481!1 (str.++ var3481 var3531)))
(assert true)
(define-const var678 String (append/-1166366385 var1773 61)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(61) 
(declare-const var1773!1 String)
(assert (str.prefixof var1773 var1773!1))
 ; Statement: if r3 != null goto $r8 = r3 
(assert (not (not (= var981 null-var175)))) ; Negate: Cond: r3 != null  
(define-const var3096 var175 (cast-from-String-to-var175 "null")) ; Statement: $r8 = "null" 
 ; Statement: goto [?= virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1031950772 var678 var3096)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var678!1 String)
(assert (str.prefixof var678 var678!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-171891354=([java.lang.StringBuilder], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), cast-from-String-to-var175=([java.lang.String], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder)}
; {var3481=r0, var1462=z0, var1915=r5, var3531=r1, var2354=null_type, var175=java.lang.Object, var981=r3, var1447=$i0, var1773=$r2, var678=$r4, var3096=$r8}
; {r0=var3481, z0=var1462, r5=var1915, r1=var3531, null_type=var2354, java.lang.Object=var175, r3=var981, $i0=var1447, $r2=var1773, $r4=var678, $r8=var3096}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	r5 := @parameter2: java.lang.Class;	r1 := @parameter3: java.lang.String;	r3 := @parameter4: java.lang.Object;	$i0 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto (branch);	if z0 == 0 goto $r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r2 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(61);	if r3 != null goto $r8 = r3;	$r8 = "null";	goto [?= virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8)];	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	return
;block_num 5
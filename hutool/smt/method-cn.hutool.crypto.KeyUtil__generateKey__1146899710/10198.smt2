(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1861 0)
(declare-sort var868 0)
(declare-sort var2261 0)
(declare-sort var1528 0)
(declare-sort var561 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var868-init () (Array Int var868))
(declare-fun var2261_notBlank/-161903167 (String String (Array Int var868)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun cast-from-var1528-to-var868 (var1528) var868)
(declare-fun var561_generateDESKey/984827498 (String (Array Int Int)) var1528)
(declare-fun cast-from-var868-to-var1528 (var868) var1528)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3443 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3443 null-String)))
(declare-const var3333 (Array Int Int)) ; Statement: r2 := @parameter1: byte[] 
(assert (not (= var3333 null-__Array__Int__Int__)))
(define-const var3577 (Array Int var868) arr-var868-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var2261_notBlank/-161903167 (cast-from-String-to-String var3443) "Algorithm is blank!" var3577)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "Algorithm is blank!", $r1) 

(declare-const var3443!1 String)
(declare-const var244 String)
(declare-const var3577!1 (Array Int var868))
(assert true)
(define-const var3484 Bool (startsWith/-1785782452 var3443!1 "PBE")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("PBE") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("DES") 
(assert (= (ite var3484 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3870 Bool (startsWith/-1785782452 var3443!1 "DES")) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("DES") 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (not (= (ite var3870 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3189 var868 (cast-from-var1528-to-var868 (var561_generateDESKey/984827498 var3443!1 var3333))) ; Statement: r5 = staticinvoke <cn.hutool.crypto.KeyUtil: javax.crypto.SecretKey generateDESKey(java.lang.String,byte[])>(r0, r2) 
 ; Statement: goto [?= $r8 = (javax.crypto.SecretKey) r5] 
(assert true) ; Non Conditional
(define-const var1910 var1528 (cast-from-var868-to-var1528 var3189)) ; Statement: $r8 = (javax.crypto.SecretKey) r5 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var868-init=([], java.lang.Object[]), var2261_notBlank/-161903167=([java.lang.CharSequence, java.lang.String, java.lang.Object[]], java.lang.CharSequence), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), cast-from-var1528-to-var868=([javax.crypto.SecretKey], java.lang.Object), var561_generateDESKey/984827498=([java.lang.String, byte[]], javax.crypto.SecretKey), cast-from-var868-to-var1528=([java.lang.Object], javax.crypto.SecretKey)}
; {var3443=r0, var1861=null_type, var3333=r2, var868=java.lang.Object, var3577=$r1, var2261=cn.hutool.core.lang.Assert, var244="Algorithm is blank!", var3484=$z0, var3870=$z1, var1528=javax.crypto.SecretKey, var561=cn.hutool.crypto.KeyUtil, var3189=r5, var1910=$r8}
; {r0=var3443, null_type=var1861, r2=var3333, java.lang.Object=var868, $r1=var3577, cn.hutool.core.lang.Assert=var2261, "Algorithm is blank!"=var244, $z0=var3484, $z1=var3870, javax.crypto.SecretKey=var1528, cn.hutool.crypto.KeyUtil=var561, r5=var3189, $r8=var1910}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2}
;stmts r0 := @parameter0: java.lang.String;	r2 := @parameter1: byte[];	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence,java.lang.String,java.lang.Object[])>(r0, "Algorithm is blank!", $r1);	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("PBE");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("DES");	$z1 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("DES");	if $z1 == 0 goto (branch);	r5 = staticinvoke <cn.hutool.crypto.KeyUtil: javax.crypto.SecretKey generateDESKey(java.lang.String,byte[])>(r0, r2);	goto [?= $r8 = (javax.crypto.SecretKey) r5];	$r8 = (javax.crypto.SecretKey) r5;	return $r8
;block_num 4
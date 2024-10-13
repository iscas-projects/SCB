(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var753 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun labelName/1768810554 (var753) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var753 var753)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var583 var753) ; Statement: r1 := @this: jdk.nashorn.internal.ir.LabelNode 
(assert (not (= var583 null-var753)))
(declare-const var3344 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3344 null-String)))
(declare-const var466 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var466 null-Bool)))
(define-const var1377 String (labelName/1768810554 var583)) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.LabelNode: java.lang.String labelName> 
(assert true)
(define-const var3383 String (append/672562846 var3344 var1377)) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3344!1 String)
(assert (= var3344!1 (str.++ var3344 var1377)))
(assert true)
;(assert (append/-1166366385 var3383 58)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var3383!1 String)
(assert (str.prefixof var3383 var3383!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {labelName/1768810554=([jdk.nashorn.internal.ir.LabelNode], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var753=jdk.nashorn.internal.ir.LabelNode, var583=r1, var3344=r0, var466=z0, var1377=$r2, var3383=$r3}
; {jdk.nashorn.internal.ir.LabelNode=var753, r1=var583, r0=var3344, z0=var466, $r2=var1377, $r3=var3383}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.LabelNode;	r0 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	$r2 = r1.<jdk.nashorn.internal.ir.LabelNode: java.lang.String labelName>;	$r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	return
;block_num 1
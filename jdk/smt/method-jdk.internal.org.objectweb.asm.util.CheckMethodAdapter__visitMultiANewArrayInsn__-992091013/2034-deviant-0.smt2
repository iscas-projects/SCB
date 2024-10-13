(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var934 0)
(declare-sort var846 0)
(declare-sort var2369 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkStartCode/-1084876908 (var934) void)
(declare-fun checkEndCode/-651668869 (var934) void)
(declare-fun var934_checkDesc/2075147271 (String Bool) void)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2369-init () var2369)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2369 String) void)
(declare-const null-var934 var934)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3201 var934) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.util.CheckMethodAdapter 
(assert (not (= var3201 null-var934)))
(declare-const var175 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var175 null-String)))
(declare-const var636 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var636 null-Int)))
(assert true)
;(assert (checkStartCode/-1084876908 var3201)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkStartCode()>() 

(declare-const var3201!1 var934)
(assert true)
;(assert (checkEndCode/-651668869 var3201!1)) ; Statement: virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkEndCode()>() 

(declare-const var3201!2 var934)
;(assert (var934_checkDesc/2075147271 var175 (ite (= 1 0) true false))) ; Statement: staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkDesc(java.lang.String,boolean)>(r1, 0) 

(declare-const var175!1 String)
(declare-const var3695 Int)
(assert (not (and true (and (> (str.len var175!1) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {checkStartCode/-1084876908=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], void), checkEndCode/-651668869=([jdk.internal.org.objectweb.asm.util.CheckMethodAdapter], void), var934_checkDesc/2075147271=([java.lang.String, boolean], void), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var2369-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var934=jdk.internal.org.objectweb.asm.util.CheckMethodAdapter, var3201=r0, var175=r1, var846=null_type, var636=i1, var3695=0, var1698=$c0, var330=$i6, var2369=java.lang.IllegalArgumentException, var2195=$r18, var1276=$r17, var1729=$r14, var1091=$r15, var676=$r16}
; {jdk.internal.org.objectweb.asm.util.CheckMethodAdapter=var934, r0=var3201, r1=var175, null_type=var846, i1=var636, 0=var3695, $c0=var1698, $i6=var330, java.lang.IllegalArgumentException=var2369, $r18=var2195, $r17=var1276, $r14=var1729, $r15=var1091, $r16=var676}
;seq <java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.util.CheckMethodAdapter;	r1 := @parameter0: java.lang.String;	i1 := @parameter1: int;	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkStartCode()>();	virtualinvoke r0.<jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkEndCode()>();	staticinvoke <jdk.internal.org.objectweb.asm.util.CheckMethodAdapter: void checkDesc(java.lang.String,boolean)>(r1, 0);	$c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	$i6 = (int) $c0;	if $i6 == 91 goto (branch);	$r18 = new java.lang.IllegalArgumentException;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid descriptor (must be an array type descriptor): ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r16);	throw $r18
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2773 0)
(declare-sort var954 0)
(declare-sort var1352 0)
(declare-sort var2441 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var954_getSampleThreads/485393816 () Bool)
(declare-fun append/-388390247 (String Bool) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-var1352-init () (Array Int var1352))
(declare-fun println/-835765374 (var2441 String (Array Int var1352)) void)
(declare-fun cast-from-var2773-to-var2441 (var2773) var2441)
(declare-const null-var2773 var2773)
(declare-const var3697 var2773) ; Statement: r0 := @this: jdk.jfr.internal.dcmd.DCmdConfigure 
(assert (not (= var3697 null-var2773)))
(define-const var2906 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2906)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2906!1 String)
(assert (= var2906!1 ""))
(assert true)
(define-const var1141 String (append/672562846 var2906!1 "Sample threads: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Sample threads: ") 
(declare-const var2906!2 String)
(assert (= var2906!2 (str.++ var2906!1 "Sample threads: ")))
(define-const var1519 Bool var954_getSampleThreads/485393816) ; Statement: $z0 = staticinvoke <jdk.jfr.internal.Options: boolean getSampleThreads()>() 
(assert true)
(define-const var2601 String (append/-388390247 var1141 var1519)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0) 
(declare-const var1141!1 String)
(assert (str.prefixof var1141 var1141!1))
(assert true)
(define-const var3564 String (toString/-2075883882 var2601)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1892 (Array Int var1352) arr-var1352-init) ; Statement: $r4 = newarray (java.lang.Object)[0] 
(assert true)
;(assert (println/-835765374 (cast-from-var2773-to-var2441 var3697) var3564 var1892)) ; Statement: virtualinvoke r0.<jdk.jfr.internal.dcmd.DCmdConfigure: void println(java.lang.String,java.lang.Object[])>($r5, $r4) 

(declare-const var3697!1 var2773)
(declare-const var3564!1 String)
(declare-const var1892!1 (Array Int var1352))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var954_getSampleThreads/485393816=([], boolean), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-var1352-init=([], java.lang.Object[]), println/-835765374=([jdk.jfr.internal.dcmd.AbstractDCmd, java.lang.String, java.lang.Object[]], void), cast-from-var2773-to-var2441=([jdk.jfr.internal.dcmd.DCmdConfigure], jdk.jfr.internal.dcmd.AbstractDCmd)}
; {var2773=jdk.jfr.internal.dcmd.DCmdConfigure, var3697=r0, var2906=$r1, var1141=$r2, var954=jdk.jfr.internal.Options, var1519=$z0, var2601=$r3, var3564=$r5, var1352=java.lang.Object, var1892=$r4, var2441=jdk.jfr.internal.dcmd.AbstractDCmd}
; {jdk.jfr.internal.dcmd.DCmdConfigure=var2773, r0=var3697, $r1=var2906, $r2=var1141, jdk.jfr.internal.Options=var954, $z0=var1519, $r3=var2601, $r5=var3564, java.lang.Object=var1352, $r4=var1892, jdk.jfr.internal.dcmd.AbstractDCmd=var2441}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.dcmd.DCmdConfigure;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Sample threads: ");	$z0 = staticinvoke <jdk.jfr.internal.Options: boolean getSampleThreads()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = newarray (java.lang.Object)[0];	virtualinvoke r0.<jdk.jfr.internal.dcmd.DCmdConfigure: void println(java.lang.String,java.lang.Object[])>($r5, $r4);	return
;block_num 1
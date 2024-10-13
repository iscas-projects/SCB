(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var877 0)
(declare-sort var2640 0)
(declare-sort var990 0)
(declare-sort var3841 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2640_getGlobalBufferCount/1684169575 () Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-var990-init () (Array Int var990))
(declare-fun println/-835765374 (var3841 String (Array Int var990)) void)
(declare-fun cast-from-var877-to-var3841 (var877) var3841)
(declare-const null-var877 var877)
(declare-const var1975 var877) ; Statement: r0 := @this: jdk.jfr.internal.dcmd.DCmdConfigure 
(assert (not (= var1975 null-var877)))
(define-const var1405 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1405)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1405!1 String)
(assert (= var1405!1 ""))
(assert true)
(define-const var1706 String (append/672562846 var1405!1 "Global buffer count: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Global buffer count: ") 
(declare-const var1405!2 String)
(assert (= var1405!2 (str.++ var1405!1 "Global buffer count: ")))
(define-const var121 Int var2640_getGlobalBufferCount/1684169575) ; Statement: $l0 = staticinvoke <jdk.jfr.internal.Options: long getGlobalBufferCount()>() 
(assert true)
(define-const var3604 String (append/-901862667 var1706 var121)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1706!1 String)
(assert (str.prefixof var1706 var1706!1))
(assert true)
(define-const var3021 String (toString/-2075883882 var3604)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var955 (Array Int var990) arr-var990-init) ; Statement: $r4 = newarray (java.lang.Object)[0] 
(assert true)
;(assert (println/-835765374 (cast-from-var877-to-var3841 var1975) var3021 var955)) ; Statement: virtualinvoke r0.<jdk.jfr.internal.dcmd.DCmdConfigure: void println(java.lang.String,java.lang.Object[])>($r5, $r4) 

(declare-const var1975!1 var877)
(declare-const var3021!1 String)
(declare-const var955!1 (Array Int var990))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2640_getGlobalBufferCount/1684169575=([], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-var990-init=([], java.lang.Object[]), println/-835765374=([jdk.jfr.internal.dcmd.AbstractDCmd, java.lang.String, java.lang.Object[]], void), cast-from-var877-to-var3841=([jdk.jfr.internal.dcmd.DCmdConfigure], jdk.jfr.internal.dcmd.AbstractDCmd)}
; {var877=jdk.jfr.internal.dcmd.DCmdConfigure, var1975=r0, var1405=$r1, var1706=$r2, var2640=jdk.jfr.internal.Options, var121=$l0, var3604=$r3, var3021=$r5, var990=java.lang.Object, var955=$r4, var3841=jdk.jfr.internal.dcmd.AbstractDCmd}
; {jdk.jfr.internal.dcmd.DCmdConfigure=var877, r0=var1975, $r1=var1405, $r2=var1706, jdk.jfr.internal.Options=var2640, $l0=var121, $r3=var3604, $r5=var3021, java.lang.Object=var990, $r4=var955, jdk.jfr.internal.dcmd.AbstractDCmd=var3841}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.dcmd.DCmdConfigure;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Global buffer count: ");	$l0 = staticinvoke <jdk.jfr.internal.Options: long getGlobalBufferCount()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = newarray (java.lang.Object)[0];	virtualinvoke r0.<jdk.jfr.internal.dcmd.DCmdConfigure: void println(java.lang.String,java.lang.Object[])>($r5, $r4);	return
;block_num 1
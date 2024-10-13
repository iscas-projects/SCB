(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3937 0)
(declare-sort var3151 0)
(declare-sort var255 0)
(declare-sort var2964 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3151_getStackDepth/-1439791487 () Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun arr-var255-init () (Array Int var255))
(declare-fun println/-835765374 (var2964 String (Array Int var255)) void)
(declare-fun cast-from-var3937-to-var2964 (var3937) var2964)
(declare-const null-var3937 var3937)
(declare-const var1689 var3937) ; Statement: r0 := @this: jdk.jfr.internal.dcmd.DCmdConfigure 
(assert (not (= var1689 null-var3937)))
(define-const var1158 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1158)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1158!1 String)
(assert (= var1158!1 ""))
(assert true)
(define-const var736 String (append/672562846 var1158!1 "Stack depth: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Stack depth: ") 
(declare-const var1158!2 String)
(assert (= var1158!2 (str.++ var1158!1 "Stack depth: ")))
(define-const var3799 Int var3151_getStackDepth/-1439791487) ; Statement: $i0 = staticinvoke <jdk.jfr.internal.Options: int getStackDepth()>() 
(assert true)
(define-const var1283 String (append/-1001720160 var736 var3799)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var736!1 String)
(assert (str.prefixof var736 var736!1))
(assert true)
(define-const var904 String (toString/-2075883882 var1283)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var364 (Array Int var255) arr-var255-init) ; Statement: $r4 = newarray (java.lang.Object)[0] 
(assert true)
;(assert (println/-835765374 (cast-from-var3937-to-var2964 var1689) var904 var364)) ; Statement: virtualinvoke r0.<jdk.jfr.internal.dcmd.DCmdConfigure: void println(java.lang.String,java.lang.Object[])>($r5, $r4) 

(declare-const var1689!1 var3937)
(declare-const var904!1 String)
(declare-const var364!1 (Array Int var255))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3151_getStackDepth/-1439791487=([], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), arr-var255-init=([], java.lang.Object[]), println/-835765374=([jdk.jfr.internal.dcmd.AbstractDCmd, java.lang.String, java.lang.Object[]], void), cast-from-var3937-to-var2964=([jdk.jfr.internal.dcmd.DCmdConfigure], jdk.jfr.internal.dcmd.AbstractDCmd)}
; {var3937=jdk.jfr.internal.dcmd.DCmdConfigure, var1689=r0, var1158=$r1, var736=$r2, var3151=jdk.jfr.internal.Options, var3799=$i0, var1283=$r3, var904=$r5, var255=java.lang.Object, var364=$r4, var2964=jdk.jfr.internal.dcmd.AbstractDCmd}
; {jdk.jfr.internal.dcmd.DCmdConfigure=var3937, r0=var1689, $r1=var1158, $r2=var736, jdk.jfr.internal.Options=var3151, $i0=var3799, $r3=var1283, $r5=var904, java.lang.Object=var255, $r4=var364, jdk.jfr.internal.dcmd.AbstractDCmd=var2964}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.dcmd.DCmdConfigure;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Stack depth: ");	$i0 = staticinvoke <jdk.jfr.internal.Options: int getStackDepth()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = newarray (java.lang.Object)[0];	virtualinvoke r0.<jdk.jfr.internal.dcmd.DCmdConfigure: void println(java.lang.String,java.lang.Object[])>($r5, $r4);	return
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2341 0)
(declare-sort var2135 0)
(declare-sort var2196 0)
(declare-sort var1232 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2135-init () var2135)
(declare-fun <init>/-1862704206 (var2135 String) void)
(declare-fun var2196-init () var2196)
(declare-fun <init>/-788057745 (var2196) void)
(declare-fun format/215566421 (var1232 var2196) String)
(declare-fun cast-from-var2135-to-var1232 (var2135) var1232)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun save/-1480362997 (var2341 String) void)
(declare-const null-var2341 var2341)
(declare-const var1514 var2341) ; Statement: r9 := @this: org.antlr.v4.runtime.misc.LogManager 
(assert (not (= var1514 null-var2341)))
(define-const var340 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var340)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var340!1 String)
(assert (= var340!1 ""))
(assert true)
(define-const var532 String (append/672562846 var340!1 ".")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var340!2 String)
(assert (= var340!2 (str.++ var340!1 ".")))
(assert true)
(define-const var566 String (append/672562846 var532 "/antlr-")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/antlr-") 
(declare-const var532!1 String)
(assert (= var532!1 (str.++ var532 "/antlr-")))
(define-const var3586 var2135 var2135-init) ; Statement: $r2 = new java.text.SimpleDateFormat 
(assert true)
;(assert (<init>/-1862704206 var3586 "yyyy-MM-dd-HH.mm.ss")) ; Statement: specialinvoke $r2.<java.text.SimpleDateFormat: void <init>(java.lang.String)>("yyyy-MM-dd-HH.mm.ss") 

(declare-const var3586!1 var2135)
(declare-const var1995 String)
(define-const var755 var2196 var2196-init) ; Statement: $r3 = new java.util.Date 
(assert true)
;(assert (<init>/-788057745 var755)) ; Statement: specialinvoke $r3.<java.util.Date: void <init>()>() 

(declare-const var755!1 var2196)
(assert true)
(define-const var3258 String (format/215566421 (cast-from-var2135-to-var1232 var3586!1) var755!1)) ; Statement: $r4 = virtualinvoke $r2.<java.text.SimpleDateFormat: java.lang.String format(java.util.Date)>($r3) 
(assert true)
(define-const var2051 String (append/672562846 var566 var3258)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var566!1 String)
(assert (= var566!1 (str.++ var566 var3258)))
(assert true)
(define-const var3903 String (append/672562846 var2051 ".log")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".log") 
(declare-const var2051!1 String)
(assert (= var2051!1 (str.++ var2051 ".log")))
(assert true)
(define-const var2093 String (toString/-2075883882 var3903)) ; Statement: r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (save/-1480362997 var1514 var2093)) ; Statement: virtualinvoke r9.<org.antlr.v4.runtime.misc.LogManager: void save(java.lang.String)>(r8) 

(declare-const var1514!1 var2341)
(declare-const var2093!1 String)
 ; Statement: return r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2135-init=([], java.text.SimpleDateFormat), <init>/-1862704206=([java.text.SimpleDateFormat, java.lang.String], void), var2196-init=([], java.util.Date), <init>/-788057745=([java.util.Date], void), format/215566421=([java.text.DateFormat, java.util.Date], java.lang.String), cast-from-var2135-to-var1232=([java.text.SimpleDateFormat], java.text.DateFormat), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), save/-1480362997=([org.antlr.v4.runtime.misc.LogManager, java.lang.String], void)}
; {var2341=org.antlr.v4.runtime.misc.LogManager, var1514=r9, var340=$r0, var532=$r1, var566=$r5, var2135=java.text.SimpleDateFormat, var3586=$r2, var1995="yyyy-MM-dd-HH.mm.ss", var2196=java.util.Date, var755=$r3, var1232=java.text.DateFormat, var3258=$r4, var2051=$r6, var3903=$r7, var2093=r8}
; {org.antlr.v4.runtime.misc.LogManager=var2341, r9=var1514, $r0=var340, $r1=var532, $r5=var566, java.text.SimpleDateFormat=var2135, $r2=var3586, "yyyy-MM-dd-HH.mm.ss"=var1995, java.util.Date=var2196, $r3=var755, java.text.DateFormat=var1232, $r4=var3258, $r6=var2051, $r7=var3903, r8=var2093}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.antlr.v4.runtime.misc.LogManager;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/antlr-");	$r2 = new java.text.SimpleDateFormat;	specialinvoke $r2.<java.text.SimpleDateFormat: void <init>(java.lang.String)>("yyyy-MM-dd-HH.mm.ss");	$r3 = new java.util.Date;	specialinvoke $r3.<java.util.Date: void <init>()>();	$r4 = virtualinvoke $r2.<java.text.SimpleDateFormat: java.lang.String format(java.util.Date)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".log");	r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r9.<org.antlr.v4.runtime.misc.LogManager: void save(java.lang.String)>(r8);	return r8
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1987 0)
(declare-sort var2832 0)
(declare-sort var2687 0)
(declare-sort var217 0)
(declare-sort var51 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2832!class ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var2687_getLogger/-1440108740 (String) var2687)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var51) String)
(declare-fun cast-from-var1987-to-var51 (var1987) var51)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/1187913824 (var2687 var217 String) void)
(declare-const null-var1987 var1987)
(declare-const var217-WARNING var217)
(declare-const var1856 var1987) ; Statement: r4 := @parameter0: java.lang.Throwable 
(assert (not (= var1856 null-var1987)))
(define-const var3890 ClassObject var2832!class) ; Statement: $r0 = class "Lcom/google/javascript/jscomp/jarjar/com/google/protobuf/UnsafeUtil;" 
(assert true)
(define-const var3394 String (getName/-1958580599 var3890)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.Class: java.lang.String getName()>() 
(define-const var3705 var2687 (var2687_getLogger/-1440108740 var3394)) ; Statement: $r8 = staticinvoke <java.util.logging.Logger: java.util.logging.Logger getLogger(java.lang.String)>($r1) 
(define-const var3683 var217 var217-WARNING) ; Statement: $r3 = <java.util.logging.Level: java.util.logging.Level WARNING> 
(define-const var3539 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3539)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3539!1 String)
(assert (= var3539!1 ""))
(assert true)
(define-const var3407 String (append/672562846 var3539!1 "platform method missing - proto runtime falling back to safer methods: ")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("platform method missing - proto runtime falling back to safer methods: ") 
(declare-const var3539!2 String)
(assert (= var3539!2 (str.++ var3539!1 "platform method missing - proto runtime falling back to safer methods: ")))
(assert true)
(define-const var130 String (append/-1031950772 var3407 (cast-from-var1987-to-var51 var1856))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var3407!1 String)
(assert (str.prefixof var3407 var3407!1))
(assert true)
(define-const var3745 String (toString/-2075883882 var130)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1187913824 var3705 var3683 var3745)) ; Statement: virtualinvoke $r8.<java.util.logging.Logger: void log(java.util.logging.Level,java.lang.String)>($r3, $r7) 

(declare-const var3705!1 var2687)
(declare-const var3683!1 var217)
(declare-const var3745!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), var2687_getLogger/-1440108740=([java.lang.String], java.util.logging.Logger), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1987-to-var51=([java.lang.Throwable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/1187913824=([java.util.logging.Logger, java.util.logging.Level, java.lang.String], void)}
; {var1987=java.lang.Throwable, var1856=r4, var2832=com.google.javascript.jscomp.jarjar.com.google.protobuf.UnsafeUtil, var3890=$r0, var3394=$r1, var2687=java.util.logging.Logger, var3705=$r8, var217=java.util.logging.Level, var3683=$r3, var3539=$r2, var3407=$r5, var51=java.lang.Object, var130=$r6, var3745=$r7}
; {java.lang.Throwable=var1987, r4=var1856, com.google.javascript.jscomp.jarjar.com.google.protobuf.UnsafeUtil=var2832, $r0=var3890, $r1=var3394, java.util.logging.Logger=var2687, $r8=var3705, java.util.logging.Level=var217, $r3=var3683, $r2=var3539, $r5=var3407, java.lang.Object=var51, $r6=var130, $r7=var3745}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @parameter0: java.lang.Throwable;	$r0 = class "Lcom/google/javascript/jscomp/jarjar/com/google/protobuf/UnsafeUtil;";	$r1 = virtualinvoke $r0.<java.lang.Class: java.lang.String getName()>();	$r8 = staticinvoke <java.util.logging.Logger: java.util.logging.Logger getLogger(java.lang.String)>($r1);	$r3 = <java.util.logging.Level: java.util.logging.Level WARNING>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("platform method missing - proto runtime falling back to safer methods: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r8.<java.util.logging.Logger: void log(java.util.logging.Level,java.lang.String)>($r3, $r7);	return
;block_num 1
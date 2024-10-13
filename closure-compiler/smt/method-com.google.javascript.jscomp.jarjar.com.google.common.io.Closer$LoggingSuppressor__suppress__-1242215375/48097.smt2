(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1807 0)
(declare-sort var1851 0)
(declare-sort var1624 0)
(declare-sort var548 0)
(declare-sort var1857 0)
(declare-sort var1979 0)
(declare-sort var3276 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3276) String)
(declare-fun cast-from-var1851-to-var3276 (var1851) var3276)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-65407072 (var548 var1979 String var1624) void)
(declare-const null-var1807 var1807)
(declare-const null-var1851 var1851)
(declare-const null-var1624 var1624)
(declare-const var1857-logger var548)
(declare-const var1979-WARNING var1979)
(declare-const var2076 var1807) ; Statement: r8 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.Closer$LoggingSuppressor 
(assert (not (= var2076 null-var1807)))
(declare-const var737 var1851) ; Statement: r3 := @parameter0: java.io.Closeable 
(assert (not (= var737 null-var1851)))
(declare-const var359 var1624) ; Statement: r9 := @parameter1: java.lang.Throwable 
(assert (not (= var359 null-var1624)))
(declare-const var3777 var1624) ; Statement: r6 := @parameter2: java.lang.Throwable 
(assert (not (= var3777 null-var1624)))
(define-const var2011 var548 var1857-logger) ; Statement: $r1 = <com.google.javascript.jscomp.jarjar.com.google.common.io.Closeables: java.util.logging.Logger logger> 
(define-const var3326 var1979 var1979-WARNING) ; Statement: $r2 = <java.util.logging.Level: java.util.logging.Level WARNING> 
(define-const var2218 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2218)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2218!1 String)
(assert (= var2218!1 ""))
(assert true)
(define-const var2176 String (append/672562846 var2218!1 "Suppressing exception thrown when closing ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Suppressing exception thrown when closing ") 
(declare-const var2218!2 String)
(assert (= var2218!2 (str.++ var2218!1 "Suppressing exception thrown when closing ")))
(assert true)
(define-const var109 String (append/-1031950772 var2176 (cast-from-var1851-to-var3276 var737))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var2176!1 String)
(assert (str.prefixof var2176 var2176!1))
(assert true)
(define-const var1964 String (toString/-2075883882 var109)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/-65407072 var2011 var3326 var1964 var3777)) ; Statement: virtualinvoke $r1.<java.util.logging.Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r7, r6) 

(declare-const var2011!1 var548)
(declare-const var3326!1 var1979)
(declare-const var1964!1 String)
(declare-const var3777!1 var1624)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1851-to-var3276=([java.io.Closeable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-65407072=([java.util.logging.Logger, java.util.logging.Level, java.lang.String, java.lang.Throwable], void)}
; {var1807=com.google.javascript.jscomp.jarjar.com.google.common.io.Closer$LoggingSuppressor, var2076=r8, var1851=java.io.Closeable, var737=r3, var1624=java.lang.Throwable, var359=r9, var3777=r6, var548=java.util.logging.Logger, var1857=com.google.javascript.jscomp.jarjar.com.google.common.io.Closeables, var2011=$r1, var1979=java.util.logging.Level, var3326=$r2, var2218=$r0, var2176=$r4, var3276=java.lang.Object, var109=$r5, var1964=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.Closer$LoggingSuppressor=var1807, r8=var2076, java.io.Closeable=var1851, r3=var737, java.lang.Throwable=var1624, r9=var359, r6=var3777, java.util.logging.Logger=var548, com.google.javascript.jscomp.jarjar.com.google.common.io.Closeables=var1857, $r1=var2011, java.util.logging.Level=var1979, $r2=var3326, $r0=var2218, $r4=var2176, java.lang.Object=var3276, $r5=var109, $r7=var1964}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.Closer$LoggingSuppressor;	r3 := @parameter0: java.io.Closeable;	r9 := @parameter1: java.lang.Throwable;	r6 := @parameter2: java.lang.Throwable;	$r1 = <com.google.javascript.jscomp.jarjar.com.google.common.io.Closeables: java.util.logging.Logger logger>;	$r2 = <java.util.logging.Level: java.util.logging.Level WARNING>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Suppressing exception thrown when closing ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.util.logging.Logger: void log(java.util.logging.Level,java.lang.String,java.lang.Throwable)>($r2, $r7, r6);	return
;block_num 1
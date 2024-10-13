(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2790 0)
(declare-sort var1348 0)
(declare-sort var412 0)
(declare-sort var2743 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var412-init () var412)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun string/663297651 (var2790) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-308272473 (var412 String var2743) void)
(declare-fun cast-from-var1348-to-var2743 (var1348) var2743)
(declare-const null-var2790 var2790)
(declare-const null-var1348 var1348)
(declare-const var338 var2790) ; Statement: r0 := @this: com.mysql.cj.xdevapi.ExprParser 
(assert (not (= var338 null-var2790)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1318 var1348) ; Statement: $r10 := @caughtexception 
(assert (not (= var1318 null-var1348)))
(define-const var2564 var412 var412-init) ; Statement: $r11 = new com.mysql.cj.exceptions.WrongArgumentException 
(define-const var2129 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2129)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2129!1 String)
(assert (= var2129!1 ""))
(assert true)
(define-const var3980 String (append/672562846 var2129!1 "Unable to parse query \u0027")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to parse query \'") 
(declare-const var2129!2 String)
(assert (= var2129!2 (str.++ var2129!1 "Unable to parse query \u0027")))
(define-const var2070 String (string/663297651 var338)) ; Statement: $r13 = r0.<com.mysql.cj.xdevapi.ExprParser: java.lang.String string> 
(assert true)
(define-const var3843 String (append/672562846 var3980 var2070)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var3980!1 String)
(assert (= var3980!1 (str.++ var3980 var2070)))
(assert true)
(define-const var2647 String (append/672562846 var3843 "\u0027")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var3843!1 String)
(assert (= var3843!1 (str.++ var3843 "\u0027")))
(assert true)
(define-const var818 String (toString/-2075883882 var2647)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-308272473 var2564 var818 (cast-from-var1348-to-var2743 var1318))) ; Statement: specialinvoke $r11.<com.mysql.cj.exceptions.WrongArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r10) 

(declare-const var2564!1 var412)
(declare-const var818!1 String)
(declare-const var1318!1 var1348)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var412-init=([], com.mysql.cj.exceptions.WrongArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), string/663297651=([com.mysql.cj.xdevapi.ExprParser], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-308272473=([com.mysql.cj.exceptions.WrongArgumentException, java.lang.String, java.lang.Throwable], void), cast-from-var1348-to-var2743=([java.lang.IllegalArgumentException], java.lang.Throwable)}
; {var2790=com.mysql.cj.xdevapi.ExprParser, var338=r0, var1348=java.lang.IllegalArgumentException, var1318=$r10, var412=com.mysql.cj.exceptions.WrongArgumentException, var2564=$r11, var2129=$r12, var3980=$r14, var2070=$r13, var3843=$r15, var2647=$r16, var818=$r17, var2743=java.lang.Throwable}
; {com.mysql.cj.xdevapi.ExprParser=var2790, r0=var338, java.lang.IllegalArgumentException=var1348, $r10=var1318, com.mysql.cj.exceptions.WrongArgumentException=var412, $r11=var2564, $r12=var2129, $r14=var3980, $r13=var2070, $r15=var3843, $r16=var2647, $r17=var818, java.lang.Throwable=var2743}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.xdevapi.ExprParser;	$r10 := @caughtexception;	$r11 = new com.mysql.cj.exceptions.WrongArgumentException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to parse query \'");	$r13 = r0.<com.mysql.cj.xdevapi.ExprParser: java.lang.String string>;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<com.mysql.cj.exceptions.WrongArgumentException: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r10);	throw $r11
;block_num 2
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var769 0)
(declare-sort var2709 0)
(declare-sort var2497 0)
(declare-sort var3487 0)
(declare-sort var3558 0)
(declare-sort var2092 0)
(declare-sort var2983 0)
(declare-sort var3958 0)
(declare-sort var1069 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2497_parse/133612336 (String Int) var2709)
(declare-fun maxCap/-561866745 (var2709) Int)
(declare-fun var3487_simplify/-391907531 (var2709) var2709)
(declare-fun var2092_compileRegexp/871161123 (var2709) var3558)
(declare-fun var2983-init () var2983)
(declare-fun <init>/-27051302 (var2983 String var3558 Int Bool) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun prefix/-1100292523 (var3558 String) Bool)
(declare-fun prefixComplete/-1482621453 (var2983) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun prefix/-1482621453 (var2983) String)
(declare-fun var1069-init () var1069)
(declare-fun <init>/-1092629202 (var1069 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var2983 var2983)
(declare-const null-var3958 var3958)
(declare-const var2919 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2919 null-String)))
(declare-const var1202 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1202 null-Int)))
(declare-const var1230 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1230 null-Bool)))
(define-const var791 var2709 (var2497_parse/133612336 var2919 var1202)) ; Statement: r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.re2j.Parser: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp parse(java.lang.String,int)>(r0, i0) 
(assert true)
(define-const var2586 Int (maxCap/-561866745 var791)) ; Statement: i1 = virtualinvoke r12.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int maxCap()>() 
(define-const var2131 var2709 (var3487_simplify/-391907531 var791)) ; Statement: r13 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.re2j.Simplify: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp simplify(com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp)>(r12) 
(define-const var2814 var3558 (var2092_compileRegexp/871161123 var2131)) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.re2j.Compiler: com.google.javascript.jscomp.jarjar.com.google.re2j.Prog compileRegexp(com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp)>(r13) 
(define-const var2283 var2983 var2983-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.com.google.re2j.RE2 
(assert true)
;(assert (<init>/-27051302 var2283 var2919 var2814 var2586 var1230)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.re2j.RE2: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.com.google.re2j.Prog,int,boolean)>(r0, r1, i1, z0) 

(declare-const var2283!1 var2983)
(declare-const var2919!1 String)
(declare-const var2814!1 var3558)
(declare-const var2586!1 Int)
(declare-const var1230!1 Bool)
(define-const var2299 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2299)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2299!1 String)
(assert (= var2299!1 ""))
(assert true)
(define-const var41 Bool (prefix/-1100292523 var2814!1 var2299!1)) ; Statement: $z1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Prog: boolean prefix(java.lang.StringBuilder)>($r3) 
(declare-const var2283!2 var2983)
(assert (not (= var2283!2 null-var2983)))
(assert (= (prefixComplete/-1482621453 var2283!2) var41)) ; Statement: $r2.<com.google.javascript.jscomp.jarjar.com.google.re2j.RE2: boolean prefixComplete> = $z1 
(assert true)
(define-const var1519 String (toString/-2075883882 var2299!1)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2283!3 var2983)
(assert (not (= var2283!3 null-var2983)))
(assert (= (prefix/-1482621453 var2283!3) var1519)) ; Statement: $r2.<com.google.javascript.jscomp.jarjar.com.google.re2j.RE2: java.lang.String prefix> = $r4 
(define-const var185 String (prefix/-1482621453 var2283!3)) ; Statement: $r5 = $r2.<com.google.javascript.jscomp.jarjar.com.google.re2j.RE2: java.lang.String prefix> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3450 var3958) ; Statement: $r10 := @caughtexception 
(assert (not (= var3450 null-var3958)))
(define-const var1231 var1069 var1069-init) ; Statement: $r11 = new java.lang.IllegalStateException 
(assert true)
;(assert (<init>/-1092629202 var1231 "can\u0027t happen")) ; Statement: specialinvoke $r11.<java.lang.IllegalStateException: void <init>(java.lang.String)>("can\'t happen") 

(declare-const var1231!1 var1069)
(declare-const var2447 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var2497_parse/133612336=([java.lang.String, int], com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp), maxCap/-561866745=([com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp], int), var3487_simplify/-391907531=([com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp], com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp), var2092_compileRegexp/871161123=([com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp], com.google.javascript.jscomp.jarjar.com.google.re2j.Prog), var2983-init=([], com.google.javascript.jscomp.jarjar.com.google.re2j.RE2), <init>/-27051302=([com.google.javascript.jscomp.jarjar.com.google.re2j.RE2, java.lang.String, com.google.javascript.jscomp.jarjar.com.google.re2j.Prog, int, boolean], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), prefix/-1100292523=([com.google.javascript.jscomp.jarjar.com.google.re2j.Prog, java.lang.StringBuilder], boolean), prefixComplete/-1482621453=([com.google.javascript.jscomp.jarjar.com.google.re2j.RE2], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), prefix/-1482621453=([com.google.javascript.jscomp.jarjar.com.google.re2j.RE2], java.lang.String), var1069-init=([], java.lang.IllegalStateException), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2919=r0, var769=null_type, var1202=i0, var1230=z0, var2709=com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp, var2497=com.google.javascript.jscomp.jarjar.com.google.re2j.Parser, var791=r12, var2586=i1, var3487=com.google.javascript.jscomp.jarjar.com.google.re2j.Simplify, var2131=r13, var3558=com.google.javascript.jscomp.jarjar.com.google.re2j.Prog, var2092=com.google.javascript.jscomp.jarjar.com.google.re2j.Compiler, var2814=r1, var2983=com.google.javascript.jscomp.jarjar.com.google.re2j.RE2, var2283=$r2, var2299=$r3, var41=$z1, var1519=$r4, var185=$r5, var3958=java.io.UnsupportedEncodingException, var3450=$r10, var1069=java.lang.IllegalStateException, var1231=$r11, var2447="can\'t happen"}
; {r0=var2919, null_type=var769, i0=var1202, z0=var1230, com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp=var2709, com.google.javascript.jscomp.jarjar.com.google.re2j.Parser=var2497, r12=var791, i1=var2586, com.google.javascript.jscomp.jarjar.com.google.re2j.Simplify=var3487, r13=var2131, com.google.javascript.jscomp.jarjar.com.google.re2j.Prog=var3558, com.google.javascript.jscomp.jarjar.com.google.re2j.Compiler=var2092, r1=var2814, com.google.javascript.jscomp.jarjar.com.google.re2j.RE2=var2983, $r2=var2283, $r3=var2299, $z1=var41, $r4=var1519, $r5=var185, java.io.UnsupportedEncodingException=var3958, $r10=var3450, java.lang.IllegalStateException=var1069, $r11=var1231, "can\'t happen"=var2447}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	z0 := @parameter2: boolean;	r12 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.re2j.Parser: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp parse(java.lang.String,int)>(r0, i0);	i1 = virtualinvoke r12.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: int maxCap()>();	r13 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.re2j.Simplify: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp simplify(com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp)>(r12);	r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.re2j.Compiler: com.google.javascript.jscomp.jarjar.com.google.re2j.Prog compileRegexp(com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp)>(r13);	$r2 = new com.google.javascript.jscomp.jarjar.com.google.re2j.RE2;	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.re2j.RE2: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.com.google.re2j.Prog,int,boolean)>(r0, r1, i1, z0);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$z1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Prog: boolean prefix(java.lang.StringBuilder)>($r3);	$r2.<com.google.javascript.jscomp.jarjar.com.google.re2j.RE2: boolean prefixComplete> = $z1;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r2.<com.google.javascript.jscomp.jarjar.com.google.re2j.RE2: java.lang.String prefix> = $r4;	$r5 = $r2.<com.google.javascript.jscomp.jarjar.com.google.re2j.RE2: java.lang.String prefix>;	$r10 := @caughtexception;	$r11 = new java.lang.IllegalStateException;	specialinvoke $r11.<java.lang.IllegalStateException: void <init>(java.lang.String)>("can\'t happen");	throw $r11
;block_num 2
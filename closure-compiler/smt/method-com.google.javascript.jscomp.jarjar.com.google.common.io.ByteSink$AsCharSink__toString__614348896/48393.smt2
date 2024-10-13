(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var174 0)
(declare-sort var3183 0)
(declare-sort var1396 0)
(declare-sort var3248 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun this$0/-1080546616 (var174) var3183)
(declare-fun toString/-522406933 (var1396) String)
(declare-fun cast-from-var3183-to-var1396 (var3183) var1396)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun charset/-1080546616 (var174) var3248)
(declare-fun append/-1031950772 (String var1396) String)
(declare-fun cast-from-var3248-to-var1396 (var3248) var1396)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var174 var174)
(declare-const var176 var174) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSink$AsCharSink 
(assert (not (= var176 null-var174)))
(define-const var173 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var173)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var173!1 String)
(assert (= var173!1 ""))
(define-const var1180 var3183 (this$0/-1080546616 var176)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSink$AsCharSink: com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSink this$0> 
(assert true)
(define-const var3423 String (toString/-522406933 (cast-from-var3183-to-var1396 var1180))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var31 String (append/672562846 var173!1 var3423)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var173!2 String)
(assert (= var173!2 (str.++ var173!1 var3423)))
(assert true)
(define-const var1103 String (append/672562846 var31 ".asCharSink(")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".asCharSink(") 
(declare-const var31!1 String)
(assert (= var31!1 (str.++ var31 ".asCharSink(")))
(define-const var3288 var3248 (charset/-1080546616 var176)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSink$AsCharSink: java.nio.charset.Charset charset> 
(assert true)
(define-const var206 String (append/-1031950772 var1103 (cast-from-var3248-to-var1396 var3288))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var1103!1 String)
(assert (str.prefixof var1103 var1103!1))
(assert true)
(define-const var3379 String (append/672562846 var206 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var206!1 String)
(assert (= var206!1 (str.++ var206 ")")))
(assert true)
(define-const var690 String (toString/-2075883882 var3379)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), this$0/-1080546616=([com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSink$AsCharSink], com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSink), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var3183-to-var1396=([com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSink], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), charset/-1080546616=([com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSink$AsCharSink], java.nio.charset.Charset), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3248-to-var1396=([java.nio.charset.Charset], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var174=com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSink$AsCharSink, var176=r1, var173=$r0, var3183=com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSink, var1180=$r2, var1396=java.lang.Object, var3423=$r3, var31=$r4, var1103=$r6, var3248=java.nio.charset.Charset, var3288=$r5, var206=$r7, var3379=$r8, var690=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSink$AsCharSink=var174, r1=var176, $r0=var173, com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSink=var3183, $r2=var1180, java.lang.Object=var1396, $r3=var3423, $r4=var31, $r6=var1103, java.nio.charset.Charset=var3248, $r5=var3288, $r7=var206, $r8=var3379, $r9=var690}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSink$AsCharSink;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSink$AsCharSink: com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSink this$0>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".asCharSink(");	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSink$AsCharSink: java.nio.charset.Charset charset>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1
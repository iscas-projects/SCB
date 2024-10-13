(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3803 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/976430415 (var3803) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun encodeString/-1304359864 (var3803 String) void)
(declare-const null-var3803 var3803)
(declare-const var3274 var3803) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.UUEncoder 
(assert (not (= var3274 null-var3803)))
(define-const var911 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var911)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var911!1 String)
(assert (= var911!1 ""))
(assert true)
(define-const var2652 String (append/672562846 var911!1 "begin 644 ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("begin 644 ") 
(declare-const var911!2 String)
(assert (= var911!2 (str.++ var911!1 "begin 644 ")))
(define-const var3783 String (name/976430415 var3274)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.UUEncoder: java.lang.String name> 
(assert true)
(define-const var3136 String (append/672562846 var2652 var3783)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2652!1 String)
(assert (= var2652!1 (str.++ var2652 var3783)))
(assert true)
(define-const var302 String (append/672562846 var3136 "\n")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var3136!1 String)
(assert (= var3136!1 (str.++ var3136 "\n")))
(assert true)
(define-const var3406 String (toString/-2075883882 var302)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (encodeString/-1304359864 var3274 var3406)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.UUEncoder: void encodeString(java.lang.String)>($r6) 

(declare-const var3274!1 var3803)
(declare-const var3406!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/976430415=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.UUEncoder], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), encodeString/-1304359864=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.UUEncoder, java.lang.String], void)}
; {var3803=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.UUEncoder, var3274=r0, var911=$r1, var2652=$r3, var3783=$r2, var3136=$r4, var302=$r5, var3406=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.UUEncoder=var3803, r0=var3274, $r1=var911, $r3=var2652, $r2=var3783, $r4=var3136, $r5=var302, $r6=var3406}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.UUEncoder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("begin 644 ");	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.UUEncoder: java.lang.String name>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.UUEncoder: void encodeString(java.lang.String)>($r6);	return
;block_num 1
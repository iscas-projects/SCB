(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3368 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/1915361286 (var3368) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun key/1716534241 (var3368) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/1716534241 (var3368) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3368 var3368)
(declare-const var1658 var3368) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Environment$Variable 
(assert (not (= var1658 null-var3368)))
(assert true)
;(assert (validate/1915361286 var1658)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Environment$Variable: void validate()>() 

(declare-const var1658!1 var3368)
(define-const var2898 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2898)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2898!1 String)
(assert (= var2898!1 ""))
(define-const var368 String (key/1716534241 var1658!1)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Environment$Variable: java.lang.String key> 
(assert true)
(define-const var2595 String (trim/-847153721 var368)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3821 String (append/672562846 var2898!1 var2595)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2898!2 String)
(assert (= var2898!2 (str.++ var2898!1 var2595)))
(assert true)
(define-const var665 String (append/672562846 var3821 "=")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=") 
(declare-const var3821!1 String)
(assert (= var3821!1 (str.++ var3821 "=")))
(define-const var3185 String (value/1716534241 var1658!1)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Environment$Variable: java.lang.String value> 
(assert true)
(define-const var2468 String (trim/-847153721 var3185)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var2691 String (append/672562846 var665 var2468)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var665!1 String)
(assert (= var665!1 (str.++ var665 var2468)))
(assert true)
(define-const var2992 String (toString/-2075883882 var2691)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/1915361286=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Environment$Variable], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), key/1716534241=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Environment$Variable], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/1716534241=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Environment$Variable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3368=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Environment$Variable, var1658=r0, var2898=$r1, var368=$r2, var2595=$r3, var3821=$r4, var665=$r7, var3185=$r5, var2468=$r6, var2691=$r8, var2992=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Environment$Variable=var3368, r0=var1658, $r1=var2898, $r2=var368, $r3=var2595, $r4=var3821, $r7=var665, $r5=var3185, $r6=var2468, $r8=var2691, $r9=var2992}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String trim()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Environment$Variable;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Environment$Variable: void validate()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Environment$Variable: java.lang.String key>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=");	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Environment$Variable: java.lang.String value>;	$r6 = virtualinvoke $r5.<java.lang.String: java.lang.String trim()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2795 0)
(declare-sort var1713 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun read/-1044631906 (var1713) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2795 var2795)
(declare-const null-var1713 var1713)
(declare-const var1792 var2795) ; Statement: r3 := @this: org.apache.ibatis.javassist.tools.web.Webserver 
(assert (not (= var1792 null-var2795)))
(declare-const var2534 var1713) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var2534 null-var1713)))
(define-const var3070 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3070)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3070!1 String)
(assert (= var3070!1 ""))
(assert true) ; Non Conditional
(assert true)
(define-const var1415 Int (read/-1044631906 var2534)) ; Statement: $i0 = virtualinvoke r1.<java.io.InputStream: int read()>() 
 ; Statement: if $i0 < 0 goto virtualinvoke r1.<java.io.InputStream: int read()>() 
(assert (not (< var1415 0))) ; Negate: Cond: $i0 < 0  
 ; Statement: if $i0 == 13 goto virtualinvoke r1.<java.io.InputStream: int read()>() 
(assert (not (= var1415 13))) ; Negate: Cond: $i0 == 13  
(define-const var1897 Int (cast-from-Int-to-Int var1415)) ; Statement: $c1 = (char) $i0 
(assert true)
;(assert (append/-1166366385 var3070!1 var1897)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var3070!2 String)
(assert (str.prefixof var3070!1 var3070!2))
 ; Statement: goto [?= $i0 = virtualinvoke r1.<java.io.InputStream: int read()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1415!1 Int (read/-1044631906 var2534)) ; Statement: $i0 = virtualinvoke r1.<java.io.InputStream: int read()>() 
 ; Statement: if $i0 < 0 goto virtualinvoke r1.<java.io.InputStream: int read()>() 
(assert (< var1415!1 0)) ; Cond: $i0 < 0 
(assert true)
;(assert (read/-1044631906 var2534)) ; Statement: virtualinvoke r1.<java.io.InputStream: int read()>() 

(declare-const var2534!1 var1713)
(assert true)
(define-const var2505 String (toString/-2075883882 var3070!2)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), read/-1044631906=([java.io.InputStream], int), cast-from-Int-to-Int=([int], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2795=org.apache.ibatis.javassist.tools.web.Webserver, var1792=r3, var1713=java.io.InputStream, var2534=r1, var3070=$r0, var1415=$i0, var1897=$c1, var2505=$r2}
; {org.apache.ibatis.javassist.tools.web.Webserver=var2795, r3=var1792, java.io.InputStream=var1713, r1=var2534, $r0=var3070, $i0=var1415, $c1=var1897, $r2=var2505}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.ibatis.javassist.tools.web.Webserver;	r1 := @parameter0: java.io.InputStream;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$i0 = virtualinvoke r1.<java.io.InputStream: int read()>();	if $i0 < 0 goto virtualinvoke r1.<java.io.InputStream: int read()>();	if $i0 == 13 goto virtualinvoke r1.<java.io.InputStream: int read()>();	$c1 = (char) $i0;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	goto [?= $i0 = virtualinvoke r1.<java.io.InputStream: int read()>()];	$i0 = virtualinvoke r1.<java.io.InputStream: int read()>();	if $i0 < 0 goto virtualinvoke r1.<java.io.InputStream: int read()>();	virtualinvoke r1.<java.io.InputStream: int read()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 6
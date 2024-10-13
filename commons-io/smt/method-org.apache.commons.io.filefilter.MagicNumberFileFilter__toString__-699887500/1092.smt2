(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2011 0)
(declare-sort var1466 0)
(declare-sort var3284 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun toString/-111084316 (var1466) String)
(declare-fun cast-from-var2011-to-var1466 (var2011) var1466)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun magicNumbers/1751107804 (var2011) (Array Int Int))
(declare-fun var3284_defaultCharset/657962044 () var3284)
(declare-fun <init>/-2015205558 (String (Array Int Int) var3284) void)
(declare-fun byteOffset/1751107804 (var2011) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2011 var2011)
(declare-const var2682 var2011) ; Statement: r1 := @this: org.apache.commons.io.filefilter.MagicNumberFileFilter 
(assert (not (= var2682 null-var2011)))
(define-const var757 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var154 String (toString/-111084316 (cast-from-var2011-to-var1466 var2682))) ; Statement: $r2 = specialinvoke r1.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var757 var154)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var757!1 String)
(assert (= var757!1 var154))
(assert true)
;(assert (append/672562846 var757!1 "(")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var757!2 String)
(assert (= var757!2 (str.++ var757!1 "(")))
(define-const var3475 String String-init) ; Statement: $r3 = new java.lang.String 
(define-const var225 (Array Int Int) (magicNumbers/1751107804 var2682)) ; Statement: $r4 = r1.<org.apache.commons.io.filefilter.MagicNumberFileFilter: byte[] magicNumbers> 
(define-const var629 var3284 var3284_defaultCharset/657962044) ; Statement: $r5 = staticinvoke <java.nio.charset.Charset: java.nio.charset.Charset defaultCharset()>() 
(assert true)
;(assert (<init>/-2015205558 var3475 var225 var629)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r4, $r5) 

(declare-const var3475!1 String)
(declare-const var225!1 (Array Int Int))
(declare-const var629!1 var3284)
(assert true)
;(assert (append/672562846 var757!2 var3475!1)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var757!3 String)
(assert (= var757!3 (str.++ var757!2 var3475!1)))
(assert true)
;(assert (append/672562846 var757!3 ",")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var757!4 String)
(assert (= var757!4 (str.++ var757!3 ",")))
(define-const var2166 Int (byteOffset/1751107804 var2682)) ; Statement: $l0 = r1.<org.apache.commons.io.filefilter.MagicNumberFileFilter: long byteOffset> 
(assert true)
;(assert (append/-901862667 var757!4 var2166)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var757!5 String)
(assert (str.prefixof var757!4 var757!5))
(assert true)
;(assert (append/672562846 var757!5 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var757!6 String)
(assert (= var757!6 (str.++ var757!5 ")")))
(assert true)
(define-const var2033 String (toString/-2075883882 var757!6)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), toString/-111084316=([org.apache.commons.io.filefilter.AbstractFileFilter], java.lang.String), cast-from-var2011-to-var1466=([org.apache.commons.io.filefilter.MagicNumberFileFilter], org.apache.commons.io.filefilter.AbstractFileFilter), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), magicNumbers/1751107804=([org.apache.commons.io.filefilter.MagicNumberFileFilter], byte[]), var3284_defaultCharset/657962044=([], java.nio.charset.Charset), <init>/-2015205558=([java.lang.String, byte[], java.nio.charset.Charset], void), byteOffset/1751107804=([org.apache.commons.io.filefilter.MagicNumberFileFilter], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2011=org.apache.commons.io.filefilter.MagicNumberFileFilter, var2682=r1, var757=$r0, var1466=org.apache.commons.io.filefilter.AbstractFileFilter, var154=$r2, var3475=$r3, var225=$r4, var3284=java.nio.charset.Charset, var629=$r5, var2166=$l0, var2033=$r6}
; {org.apache.commons.io.filefilter.MagicNumberFileFilter=var2011, r1=var2682, $r0=var757, org.apache.commons.io.filefilter.AbstractFileFilter=var1466, $r2=var154, $r3=var3475, $r4=var225, java.nio.charset.Charset=var3284, $r5=var629, $l0=var2166, $r6=var2033}
;seq <org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.io.filefilter.MagicNumberFileFilter;	$r0 = new java.lang.StringBuilder;	$r2 = specialinvoke r1.<org.apache.commons.io.filefilter.AbstractFileFilter: java.lang.String toString()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r3 = new java.lang.String;	$r4 = r1.<org.apache.commons.io.filefilter.MagicNumberFileFilter: byte[] magicNumbers>;	$r5 = staticinvoke <java.nio.charset.Charset: java.nio.charset.Charset defaultCharset()>();	specialinvoke $r3.<java.lang.String: void <init>(byte[],java.nio.charset.Charset)>($r4, $r5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$l0 = r1.<org.apache.commons.io.filefilter.MagicNumberFileFilter: long byteOffset>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1
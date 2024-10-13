(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1622 0)
(declare-sort var3865 0)
(declare-sort var2211 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var2211-init () var2211)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-645024055 (var2211 String) void)
(declare-const null-var1622 var1622)
(declare-const null-String String)
(declare-const var3161 var1622) ; Statement: r9 := @this: jdk.internal.util.xml.impl.XMLStreamWriterImpl 
(assert (not (= var3161 null-var1622)))
(declare-const var2768 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2768 null-String)))
(assert true)
(define-const var2771 Bool (equalsIgnoreCase/-92311102 var2768 "UTF-32")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("UTF-32") 
 ; Statement: if $z0 == 0 goto r1 = staticinvoke <java.nio.charset.Charset: java.nio.charset.Charset forName(java.lang.String)>(r0) 
(assert (not (= (ite var2771 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var919 var2211 var2211-init) ; Statement: $r2 = new java.io.UnsupportedEncodingException 
(define-const var3777 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3777)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3777!1 String)
(assert (= var3777!1 ""))
(assert true)
(define-const var1928 String (append/672562846 var3777!1 "The basic XMLWriter does not support ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The basic XMLWriter does not support ") 
(declare-const var3777!2 String)
(assert (= var3777!2 (str.++ var3777!1 "The basic XMLWriter does not support ")))
(assert true)
(define-const var3211 String (append/672562846 var1928 var2768)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1928!1 String)
(assert (= var1928!1 (str.++ var1928 var2768)))
(assert true)
(define-const var952 String (toString/-2075883882 var3211)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-645024055 var919 var952)) ; Statement: specialinvoke $r2.<java.io.UnsupportedEncodingException: void <init>(java.lang.String)>($r6) 

(declare-const var919!1 var2211)
(declare-const var952!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var2211-init=([], java.io.UnsupportedEncodingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-645024055=([java.io.UnsupportedEncodingException, java.lang.String], void)}
; {var1622=jdk.internal.util.xml.impl.XMLStreamWriterImpl, var3161=r9, var2768=r0, var3865=null_type, var2771=$z0, var2211=java.io.UnsupportedEncodingException, var919=$r2, var3777=$r3, var1928=$r4, var3211=$r5, var952=$r6}
; {jdk.internal.util.xml.impl.XMLStreamWriterImpl=var1622, r9=var3161, r0=var2768, null_type=var3865, $z0=var2771, java.io.UnsupportedEncodingException=var2211, $r2=var919, $r3=var3777, $r4=var1928, $r5=var3211, $r6=var952}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: jdk.internal.util.xml.impl.XMLStreamWriterImpl;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("UTF-32");	if $z0 == 0 goto r1 = staticinvoke <java.nio.charset.Charset: java.nio.charset.Charset forName(java.lang.String)>(r0);	$r2 = new java.io.UnsupportedEncodingException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The basic XMLWriter does not support ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.io.UnsupportedEncodingException: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 2
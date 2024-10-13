(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2751 0)
(declare-sort var2309 0)
(declare-sort var3964 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-1687734756 (var2309) Int)
(declare-fun rest/2010859792 (var2309) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun var3964-init () var3964)
(declare-fun <init>/-115579219 (var3964 String String) void)
(declare-const null-var2751 var2751)
(declare-const null-var2309 var2309)
(declare-const var244 var2751) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser 
(assert (not (= var244 null-var2751)))
(declare-const var2732 var2309) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator 
(assert (not (= var2732 null-var2309)))
(assert true)
(define-const var686 Int (pos/-1687734756 var2732)) ; Statement: i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos()>() 
(assert true)
(define-const var1187 String (rest/2010859792 var2732)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String rest()>() 
(assert true)
(define-const var1769 Bool (startsWith/-1785782452 var1187 "(?P<")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("(?P<") 
 ; Statement: if $z0 == 0 goto virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: void skip(int)>(2) 
(assert (not (= (ite var1769 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var47 Int (indexOf/-1037706067 var1187 62)) ; Statement: i5 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(62) 
 ; Statement: if i5 >= 0 goto r12 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(4, i5) 
(assert (not (>= var47 0))) ; Negate: Cond: i5 >= 0  
(define-const var324 var3964 var3964-init) ; Statement: $r16 = new com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException 
(assert true)
;(assert (<init>/-115579219 var324 "invalid named capture" var1187)) ; Statement: specialinvoke $r16.<com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException: void <init>(java.lang.String,java.lang.String)>("invalid named capture", r1) 

(declare-const var324!1 var3964)
(declare-const var3050 String)
(declare-const var1187!1 String)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-1687734756=([com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator], int), rest/2010859792=([com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), indexOf/-1037706067=([java.lang.String, int], int), var3964-init=([], com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException), <init>/-115579219=([com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException, java.lang.String, java.lang.String], void)}
; {var2751=com.google.javascript.jscomp.jarjar.com.google.re2j.Parser, var244=r2, var2309=com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator, var2732=r0, var686=i0, var1187=r1, var1769=$z0, var47=i5, var3964=com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException, var324=$r16, var3050="invalid named capture"}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Parser=var2751, r2=var244, com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator=var2309, r0=var2732, i0=var686, r1=var1187, $z0=var1769, i5=var47, com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException=var3964, $r16=var324, "invalid named capture"=var3050}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: int indexOf(int)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator;	i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos()>();	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String rest()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("(?P<");	if $z0 == 0 goto virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: void skip(int)>(2);	i5 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(62);	if i5 >= 0 goto r12 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(4, i5);	$r16 = new com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException;	specialinvoke $r16.<com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException: void <init>(java.lang.String,java.lang.String)>("invalid named capture", r1);	throw $r16
;block_num 3
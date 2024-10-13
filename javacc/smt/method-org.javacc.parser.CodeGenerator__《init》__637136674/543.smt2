(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3366 0)
(declare-sort var3247 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3247) void)
(declare-fun cast-from-var3366-to-var3247 (var3366) var3247)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun mainBuffer/-1919349735 (var3366) String)
(declare-fun includeBuffer/-1919349735 (var3366) String)
(declare-fun staticsBuffer/-1919349735 (var3366) String)
(declare-fun outputBuffer/-1919349735 (var3366) String)
(declare-const null-var3366 var3366)
(declare-const var381 var3366) ; Statement: r0 := @this: org.javacc.parser.CodeGenerator 
(assert (not (= var381 null-var3366)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3366-to-var3247 var381))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var381!1 var3366)
(define-const var2876 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2876)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2876!1 String)
(declare-const var381!2 var3366)
(assert (not (= var381!2 null-var3366)))
(assert (= (mainBuffer/-1919349735 var381!2) var2876!1)) ; Statement: r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer mainBuffer> = $r1 
(define-const var2857 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2857)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2857!1 String)
(declare-const var381!3 var3366)
(assert (not (= var381!3 null-var3366)))
(assert (= (includeBuffer/-1919349735 var381!3) var2857!1)) ; Statement: r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer includeBuffer> = $r2 
(define-const var2782 String String-init) ; Statement: $r3 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2782)) ; Statement: specialinvoke $r3.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2782!1 String)
(declare-const var381!4 var3366)
(assert (not (= var381!4 null-var3366)))
(assert (= (staticsBuffer/-1919349735 var381!4) var2782!1)) ; Statement: r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer staticsBuffer> = $r3 
(define-const var3432 String (mainBuffer/-1919349735 var381!4)) ; Statement: $r4 = r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer mainBuffer> 
(declare-const var381!5 var3366)
(assert (not (= var381!5 null-var3366)))
(assert (= (outputBuffer/-1919349735 var381!5) var3432)) ; Statement: r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer outputBuffer> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3366-to-var3247=([org.javacc.parser.CodeGenerator], java.lang.Object), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), mainBuffer/-1919349735=([org.javacc.parser.CodeGenerator], java.lang.StringBuffer), includeBuffer/-1919349735=([org.javacc.parser.CodeGenerator], java.lang.StringBuffer), staticsBuffer/-1919349735=([org.javacc.parser.CodeGenerator], java.lang.StringBuffer), outputBuffer/-1919349735=([org.javacc.parser.CodeGenerator], java.lang.StringBuffer)}
; {var3366=org.javacc.parser.CodeGenerator, var381=r0, var3247=java.lang.Object, var2876=$r1, var2857=$r2, var2782=$r3, var3432=$r4}
; {org.javacc.parser.CodeGenerator=var3366, r0=var381, java.lang.Object=var3247, $r1=var2876, $r2=var2857, $r3=var2782, $r4=var3432}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 3}
;stmts r0 := @this: org.javacc.parser.CodeGenerator;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer mainBuffer> = $r1;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer includeBuffer> = $r2;	$r3 = new java.lang.StringBuffer;	specialinvoke $r3.<java.lang.StringBuffer: void <init>()>();	r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer staticsBuffer> = $r3;	$r4 = r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer mainBuffer>;	r0.<org.javacc.parser.CodeGenerator: java.lang.StringBuffer outputBuffer> = $r4;	return
;block_num 1
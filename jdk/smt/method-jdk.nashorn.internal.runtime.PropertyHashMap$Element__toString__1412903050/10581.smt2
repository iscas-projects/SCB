(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1555 0)
(declare-sort var3321 0)
(declare-sort var2958 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun append/1183289509 (String Int) String)
(declare-fun getValue/-1323876766 (var1555) var3321)
(declare-fun append/-143899486 (String var2958) String)
(declare-fun cast-from-var3321-to-var2958 (var3321) var2958)
(declare-fun link/1550382194 (var1555) var1555)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var1555 var1555)
(declare-const var3771 var1555) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.PropertyHashMap$Element 
(assert (not (= var3771 null-var1555)))
(define-const var3503 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3503)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3503!1 String)
(assert true)
;(assert (append/1183289509 var3503!1 91)) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(91) 

(declare-const var3503!2 String)
(declare-const var855 Int)
(define-const var2129 var1555 var3771) ; Statement: r5 = r1 
(assert true) ; Non Conditional
(assert true)
(define-const var2354 var3321 (getValue/-1323876766 var2129)) ; Statement: $r2 = virtualinvoke r5.<jdk.nashorn.internal.runtime.PropertyHashMap$Element: jdk.nashorn.internal.runtime.Property getValue()>() 
(assert true)
;(assert (append/-143899486 var3503!2 (cast-from-var3321-to-var2958 var2354))) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r2) 

(declare-const var3503!3 String)
(declare-const var2354!1 var3321)
(define-const var1315 var1555 (link/1550382194 var2129)) ; Statement: $r3 = r5.<jdk.nashorn.internal.runtime.PropertyHashMap$Element: jdk.nashorn.internal.runtime.PropertyHashMap$Element link> 
(define-const var2129!1 var1555 var1315) ; Statement: r5 = $r3 
 ; Statement: if $r3 == null goto (branch) 
(assert (= var1315 null-var1555)) ; Cond: $r3 == null 
 ; Statement: if $r3 != null goto $r2 = virtualinvoke r5.<jdk.nashorn.internal.runtime.PropertyHashMap$Element: jdk.nashorn.internal.runtime.Property getValue()>() 
(assert (not (not (= var1315 null-var1555)))) ; Negate: Cond: $r3 != null  
(assert true)
;(assert (append/1183289509 var3503!3 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93) 

(declare-const var3503!4 String)
(declare-const var3339 Int)
(assert true)
(define-const var138 String (toString/-222306083 var3503!4)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), getValue/-1323876766=([jdk.nashorn.internal.runtime.PropertyHashMap$Element], jdk.nashorn.internal.runtime.Property), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var3321-to-var2958=([jdk.nashorn.internal.runtime.Property], java.lang.Object), link/1550382194=([jdk.nashorn.internal.runtime.PropertyHashMap$Element], jdk.nashorn.internal.runtime.PropertyHashMap$Element), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var1555=jdk.nashorn.internal.runtime.PropertyHashMap$Element, var3771=r1, var3503=$r0, var855=91, var2129=r5, var3321=jdk.nashorn.internal.runtime.Property, var2354=$r2, var2958=java.lang.Object, var1315=$r3, var3339=93, var138=$r4}
; {jdk.nashorn.internal.runtime.PropertyHashMap$Element=var1555, r1=var3771, $r0=var3503, 91=var855, r5=var2129, jdk.nashorn.internal.runtime.Property=var3321, $r2=var2354, java.lang.Object=var2958, $r3=var1315, 93=var3339, $r4=var138}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.PropertyHashMap$Element;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(91);	r5 = r1;	$r2 = virtualinvoke r5.<jdk.nashorn.internal.runtime.PropertyHashMap$Element: jdk.nashorn.internal.runtime.Property getValue()>();	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r2);	$r3 = r5.<jdk.nashorn.internal.runtime.PropertyHashMap$Element: jdk.nashorn.internal.runtime.PropertyHashMap$Element link>;	r5 = $r3;	if $r3 == null goto (branch);	if $r3 != null goto $r2 = virtualinvoke r5.<jdk.nashorn.internal.runtime.PropertyHashMap$Element: jdk.nashorn.internal.runtime.Property getValue()>();	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93);	$r4 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	return $r4
;block_num 4
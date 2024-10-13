(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var151 0)
(declare-sort var1361 0)
(declare-sort var352 0)
(declare-sort var389 0)
(declare-sort var2501 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1361-init () (Array Int var1361))
(declare-fun var352_notNull/515149844 (var1361 String (Array Int var1361)) var1361)
(declare-fun cast-from-String-to-var1361 (String) var1361)
(declare-fun var2501_split/-856260977 (String Int) var389)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun var389_iterator/-912451715 (var389) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var3546 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3546 null-String)))
(define-const var1540 (Array Int var1361) arr-var1361-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var352_notNull/515149844 (cast-from-String-to-var1361 var3546) "domain must not be null!" var1540)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "domain must not be null!", $r1) 

(declare-const var3546!1 String)
(declare-const var3287 String)
(declare-const var1540!1 (Array Int var1361))
(define-const var2283 var389 (var2501_split/-856260977 (cast-from-String-to-String var3546!1) 46)) ; Statement: r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.util.List split(java.lang.CharSequence,char)>(r0, 46) 
(define-const var621 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
(define-const var1642 Int (length/-134980193 var3546!1)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1929 Int (* var1642 4)) ; Statement: $i1 = $i0 * 4 
(assert true)
;(assert (<init>/543593434 var621 var1929)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var621!1 String)
(declare-const var1929!1 Int)
(define-const var369 Iterator (var389_iterator/-912451715 var2283)) ; Statement: r4 = interfaceinvoke r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2645 Bool (Iterator_hasNext/-1669924200 var369)) ; Statement: $z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2645 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1568 String (toString/-2075883882 var621!1)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1361-init=([], java.lang.Object[]), var352_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-String-to-var1361=([java.lang.String], java.lang.Object), var2501_split/-856260977=([java.lang.CharSequence, char], java.util.List), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), var389_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3546=r0, var151=null_type, var1361=java.lang.Object, var1540=$r1, var352=cn.hutool.core.lang.Assert, var3287="domain must not be null!", var389=java.util.List, var2501=cn.hutool.core.text.CharSequenceUtil, var2283=r2, var621=$r3, var1642=$i0, var1929=$i1, var369=r4, var2645=$z0, var1568=$r5}
; {r0=var3546, null_type=var151, java.lang.Object=var1361, $r1=var1540, cn.hutool.core.lang.Assert=var352, "domain must not be null!"=var3287, java.util.List=var389, cn.hutool.core.text.CharSequenceUtil=var2501, r2=var2283, $r3=var621, $i0=var1642, $i1=var1929, r4=var369, $z0=var2645, $r5=var1568}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "domain must not be null!", $r1);	r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.util.List split(java.lang.CharSequence,char)>(r0, 46);	$r3 = new java.lang.StringBuilder;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = $i0 * 4;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i1);	r4 = interfaceinvoke r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1857 0)
(declare-sort var1211 0)
(declare-sort var452 0)
(declare-sort var2912 0)
(declare-sort var545 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1211-init () (Array Int var1211))
(declare-fun var452_notNull/515149844 (var1211 String (Array Int var1211)) var1211)
(declare-fun cast-from-String-to-var1211 (String) var1211)
(declare-fun var545_split/-856260977 (String Int) var2912)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun var2912_iterator/-912451715 (var2912) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1229 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1229 null-String)))
(define-const var49 (Array Int var1211) arr-var1211-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
;(assert (var452_notNull/515149844 (cast-from-String-to-var1211 var1229) "domain must not be null!" var49)) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "domain must not be null!", $r1) 

(declare-const var1229!1 String)
(declare-const var3817 String)
(declare-const var49!1 (Array Int var1211))
(define-const var2229 var2912 (var545_split/-856260977 (cast-from-String-to-String var1229!1) 46)) ; Statement: r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.util.List split(java.lang.CharSequence,char)>(r0, 46) 
(define-const var321 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
(define-const var1519 Int (length/-134980193 var1229!1)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1638 Int (div var1519 4)) ; Statement: $i1 = $i0 / 4 
(define-const var2181 Int (+ var1638 1)) ; Statement: $i2 = $i1 + 1 
(assert true)
;(assert (<init>/543593434 var321 var2181)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var321!1 String)
(declare-const var2181!1 Int)
(define-const var2650 Iterator (var2912_iterator/-912451715 var2229)) ; Statement: r4 = interfaceinvoke r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var883 Bool (Iterator_hasNext/-1669924200 var2650)) ; Statement: $z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var883 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var655 String (toString/-2075883882 var321!1)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1211-init=([], java.lang.Object[]), var452_notNull/515149844=([java.lang.Object, java.lang.String, java.lang.Object[]], java.lang.Object), cast-from-String-to-var1211=([java.lang.String], java.lang.Object), var545_split/-856260977=([java.lang.CharSequence, char], java.util.List), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), var2912_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1229=r0, var1857=null_type, var1211=java.lang.Object, var49=$r1, var452=cn.hutool.core.lang.Assert, var3817="domain must not be null!", var2912=java.util.List, var545=cn.hutool.core.text.CharSequenceUtil, var2229=r2, var321=$r3, var1519=$i0, var1638=$i1, var2181=$i2, var2650=r4, var883=$z0, var655=$r5}
; {r0=var1229, null_type=var1857, java.lang.Object=var1211, $r1=var49, cn.hutool.core.lang.Assert=var452, "domain must not be null!"=var3817, java.util.List=var2912, cn.hutool.core.text.CharSequenceUtil=var545, r2=var2229, $r3=var321, $i0=var1519, $i1=var1638, $i2=var2181, r4=var2650, $z0=var883, $r5=var655}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = newarray (java.lang.Object)[0];	staticinvoke <cn.hutool.core.lang.Assert: java.lang.Object notNull(java.lang.Object,java.lang.String,java.lang.Object[])>(r0, "domain must not be null!", $r1);	r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.util.List split(java.lang.CharSequence,char)>(r0, 46);	$r3 = new java.lang.StringBuilder;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = $i0 / 4;	$i2 = $i1 + 1;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i2);	r4 = interfaceinvoke r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3
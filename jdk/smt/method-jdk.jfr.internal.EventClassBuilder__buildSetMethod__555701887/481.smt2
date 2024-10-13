(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2313 0)
(declare-sort var368 0)
(declare-sort var1761 0)
(declare-sort var126 0)
(declare-sort var3970 0)
(declare-sort var1630 0)
(declare-sort var1709 0)
(declare-sort var631 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var368-init () var368)
(declare-fun classWriter/36799233 (var2313) var126)
(declare-fun <init>/146101536 (var368 Int var1761 String (Array Int var1630) var1709) void)
(declare-fun cast-from-var126-to-var1709 (var126) var1709)
(declare-fun fields/36799233 (var2313) var631)
(declare-fun var631_iterator/-912451715 (var631) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var631_size/-959786421 (var631) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun throwException/-1536952981 (var368 var1630 String) void)
(declare-fun endMethod/-2102805129 (var368) void)
(declare-const null-var2313 var2313)
(declare-const var2313-SET_METHOD var1761)
(declare-const null-NullType var3970)
(declare-const null-String String)
(declare-const null-__Array__Int__var1630__ (Array Int var1630))
(declare-const var2313-TYPE_IOBE var1630)
(declare-const var728 var2313) ; Statement: r1 := @this: jdk.jfr.internal.EventClassBuilder 
(assert (not (= var728 null-var2313)))
(define-const var3634 var368 var368-init) ; Statement: $r0 = new jdk.internal.org.objectweb.asm.commons.GeneratorAdapter 
(define-const var2928 var1761 var2313-SET_METHOD) ; Statement: $r3 = <jdk.jfr.internal.EventClassBuilder: jdk.internal.org.objectweb.asm.commons.Method SET_METHOD> 
(define-const var2750 var126 (classWriter/36799233 var728)) ; Statement: $r2 = r1.<jdk.jfr.internal.EventClassBuilder: jdk.internal.org.objectweb.asm.ClassWriter classWriter> 
(assert true)
;(assert (<init>/146101536 var3634 1 var2928 null-String null-__Array__Int__var1630__ (cast-from-var126-to-var1709 var2750))) ; Statement: specialinvoke $r0.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: void <init>(int,jdk.internal.org.objectweb.asm.commons.Method,java.lang.String,jdk.internal.org.objectweb.asm.Type[],jdk.internal.org.objectweb.asm.ClassVisitor)>(1, $r3, null, null, $r2) 

(declare-const var3634!1 var368)
(declare-const var3270 Int)
(declare-const var2928!1 var1761)
(declare-const var3789 var3970)
(declare-const var3789!1 var3970)
(declare-const var2750!1 var126)
(define-const var2457 Int 0) ; Statement: i1 = 0 
(define-const var1632 var631 (fields/36799233 var728)) ; Statement: $r4 = r1.<jdk.jfr.internal.EventClassBuilder: java.util.List fields> 
(define-const var700 Iterator (var631_iterator/-912451715 var1632)) ; Statement: r5 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3648 Bool (Iterator_hasNext/-1669924200 var700)) ; Statement: $z0 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r7 = <jdk.jfr.internal.EventClassBuilder: jdk.internal.org.objectweb.asm.Type TYPE_IOBE> 
(assert (= (ite var3648 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2070 var1630 var2313-TYPE_IOBE) ; Statement: $r7 = <jdk.jfr.internal.EventClassBuilder: jdk.internal.org.objectweb.asm.Type TYPE_IOBE> 
(define-const var2145 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2145)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2145!1 String)
(assert (= var2145!1 ""))
(assert true)
(define-const var3974 String (append/672562846 var2145!1 "Index must between 0 and ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index must between 0 and ") 
(declare-const var2145!2 String)
(assert (= var2145!2 (str.++ var2145!1 "Index must between 0 and ")))
(define-const var1069 var631 (fields/36799233 var728)) ; Statement: $r8 = r1.<jdk.jfr.internal.EventClassBuilder: java.util.List fields> 
(define-const var1106 Int (var631_size/-959786421 var1069)) ; Statement: $i0 = interfaceinvoke $r8.<java.util.List: int size()>() 
(assert true)
(define-const var294 String (append/-1001720160 var3974 var1106)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3974!1 String)
(assert (str.prefixof var3974 var3974!1))
(assert true)
(define-const var3403 String (toString/-2075883882 var294)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (throwException/-1536952981 var3634!1 var2070 var3403)) ; Statement: virtualinvoke $r0.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: void throwException(jdk.internal.org.objectweb.asm.Type,java.lang.String)>($r7, $r11) 

(declare-const var3634!2 var368)
(declare-const var2070!1 var1630)
(declare-const var3403!1 String)
(assert true)
;(assert (endMethod/-2102805129 var3634!2)) ; Statement: virtualinvoke $r0.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: void endMethod()>() 

(declare-const var3634!3 var368)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var368-init=([], jdk.internal.org.objectweb.asm.commons.GeneratorAdapter), classWriter/36799233=([jdk.jfr.internal.EventClassBuilder], jdk.internal.org.objectweb.asm.ClassWriter), <init>/146101536=([jdk.internal.org.objectweb.asm.commons.GeneratorAdapter, int, jdk.internal.org.objectweb.asm.commons.Method, java.lang.String, jdk.internal.org.objectweb.asm.Type[], jdk.internal.org.objectweb.asm.ClassVisitor], void), cast-from-var126-to-var1709=([jdk.internal.org.objectweb.asm.ClassWriter], jdk.internal.org.objectweb.asm.ClassVisitor), fields/36799233=([jdk.jfr.internal.EventClassBuilder], java.util.List), var631_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var631_size/-959786421=([java.util.List], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), throwException/-1536952981=([jdk.internal.org.objectweb.asm.commons.GeneratorAdapter, jdk.internal.org.objectweb.asm.Type, java.lang.String], void), endMethod/-2102805129=([jdk.internal.org.objectweb.asm.commons.GeneratorAdapter], void)}
; {var2313=jdk.jfr.internal.EventClassBuilder, var728=r1, var368=jdk.internal.org.objectweb.asm.commons.GeneratorAdapter, var3634=$r0, var1761=jdk.internal.org.objectweb.asm.commons.Method, var2928=$r3, var126=jdk.internal.org.objectweb.asm.ClassWriter, var2750=$r2, var3970=null_type, var1630=jdk.internal.org.objectweb.asm.Type, var1709=jdk.internal.org.objectweb.asm.ClassVisitor, var3270=1, var3789=null, var2457=i1, var631=java.util.List, var1632=$r4, var700=r5, var3648=$z0, var2070=$r7, var2145=$r6, var3974=$r9, var1069=$r8, var1106=$i0, var294=$r10, var3403=$r11}
; {jdk.jfr.internal.EventClassBuilder=var2313, r1=var728, jdk.internal.org.objectweb.asm.commons.GeneratorAdapter=var368, $r0=var3634, jdk.internal.org.objectweb.asm.commons.Method=var1761, $r3=var2928, jdk.internal.org.objectweb.asm.ClassWriter=var126, $r2=var2750, null_type=var3970, jdk.internal.org.objectweb.asm.Type=var1630, jdk.internal.org.objectweb.asm.ClassVisitor=var1709, 1=var3270, null=var3789, i1=var2457, java.util.List=var631, $r4=var1632, r5=var700, $z0=var3648, $r7=var2070, $r6=var2145, $r9=var3974, $r8=var1069, $i0=var1106, $r10=var294, $r11=var3403}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.jfr.internal.EventClassBuilder;	$r0 = new jdk.internal.org.objectweb.asm.commons.GeneratorAdapter;	$r3 = <jdk.jfr.internal.EventClassBuilder: jdk.internal.org.objectweb.asm.commons.Method SET_METHOD>;	$r2 = r1.<jdk.jfr.internal.EventClassBuilder: jdk.internal.org.objectweb.asm.ClassWriter classWriter>;	specialinvoke $r0.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: void <init>(int,jdk.internal.org.objectweb.asm.commons.Method,java.lang.String,jdk.internal.org.objectweb.asm.Type[],jdk.internal.org.objectweb.asm.ClassVisitor)>(1, $r3, null, null, $r2);	i1 = 0;	$r4 = r1.<jdk.jfr.internal.EventClassBuilder: java.util.List fields>;	r5 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r7 = <jdk.jfr.internal.EventClassBuilder: jdk.internal.org.objectweb.asm.Type TYPE_IOBE>;	$r7 = <jdk.jfr.internal.EventClassBuilder: jdk.internal.org.objectweb.asm.Type TYPE_IOBE>;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Index must between 0 and ");	$r8 = r1.<jdk.jfr.internal.EventClassBuilder: java.util.List fields>;	$i0 = interfaceinvoke $r8.<java.util.List: int size()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r0.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: void throwException(jdk.internal.org.objectweb.asm.Type,java.lang.String)>($r7, $r11);	virtualinvoke $r0.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: void endMethod()>();	return
;block_num 3
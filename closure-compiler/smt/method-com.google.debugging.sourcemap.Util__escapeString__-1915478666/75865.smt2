(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var992 0)
(declare-sort var875 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var875-init () var875)
(declare-fun <init>/-1890155946 (var875 String String) void)
(declare-fun appendUnescaped/949563005 (var875) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var272 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var272 null-String)))
(define-const var508 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
(define-const var2137 Int (length/-134980193 var272)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1304 Int (+ var2137 2)) ; Statement: $i1 = $i0 + 2 
(assert true)
;(assert (<init>/543593434 var508 var1304)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var508!1 String)
(declare-const var1304!1 Int)
(assert true)
;(assert (append/-1166366385 var508!1 34)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var508!2 String)
(assert (str.prefixof var508!1 var508!2))
(define-const var1706 var875 var875-init) ; Statement: $r7 = new com.google.debugging.sourcemap.Util$1UnescapedRegion 
(assert true)
;(assert (<init>/-1890155946 var1706 var508!2 var272)) ; Statement: specialinvoke $r7.<com.google.debugging.sourcemap.Util$1UnescapedRegion: void <init>(java.lang.StringBuilder,java.lang.String)>($r6, r1) 

(declare-const var1706!1 var875)
(declare-const var508!3 String)
(declare-const var272!1 String)
(assert true)
(define-const var950 Int (length/-134980193 var272!1)) ; Statement: i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2132 Int 0) ; Statement: i16 = 0 
(assert true) ; Non Conditional
 ; Statement: if i16 >= i2 goto virtualinvoke $r7.<com.google.debugging.sourcemap.Util$1UnescapedRegion: void appendUnescaped()>() 
(assert (>= var2132 var950)) ; Cond: i16 >= i2 
(assert true)
;(assert (appendUnescaped/949563005 var1706!1)) ; Statement: virtualinvoke $r7.<com.google.debugging.sourcemap.Util$1UnescapedRegion: void appendUnescaped()>() 

(declare-const var1706!2 var875)
(assert true)
;(assert (append/-1166366385 var508!3 34)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var508!4 String)
(assert (str.prefixof var508!3 var508!4))
(assert true)
(define-const var1769 String (toString/-2075883882 var508!4)) ; Statement: $r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var875-init=([], com.google.debugging.sourcemap.Util$1UnescapedRegion), <init>/-1890155946=([com.google.debugging.sourcemap.Util$1UnescapedRegion, java.lang.StringBuilder, java.lang.String], void), appendUnescaped/949563005=([com.google.debugging.sourcemap.Util$1UnescapedRegion], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var272=r1, var992=null_type, var508=$r6, var2137=$i0, var1304=$i1, var875=com.google.debugging.sourcemap.Util$1UnescapedRegion, var1706=$r7, var950=i2, var2132=i16, var1769=$r3}
; {r1=var272, null_type=var992, $r6=var508, $i0=var2137, $i1=var1304, com.google.debugging.sourcemap.Util$1UnescapedRegion=var875, $r7=var1706, i2=var950, i16=var2132, $r3=var1769}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r6 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 + 2;	specialinvoke $r6.<java.lang.StringBuilder: void <init>(int)>($i1);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r7 = new com.google.debugging.sourcemap.Util$1UnescapedRegion;	specialinvoke $r7.<com.google.debugging.sourcemap.Util$1UnescapedRegion: void <init>(java.lang.StringBuilder,java.lang.String)>($r6, r1);	i2 = virtualinvoke r1.<java.lang.String: int length()>();	i16 = 0;	if i16 >= i2 goto virtualinvoke $r7.<com.google.debugging.sourcemap.Util$1UnescapedRegion: void appendUnescaped()>();	virtualinvoke $r7.<com.google.debugging.sourcemap.Util$1UnescapedRegion: void appendUnescaped()>();	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3
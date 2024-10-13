(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1265 0)
(declare-sort var464 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1265 var1265)
(declare-const null-String String)
(declare-const var3290 var1265) ; Statement: r4 := @this: com.github.jknack.handlebars.internal.Partial$1 
(assert (not (= var3290 null-var1265)))
(declare-const var1606 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1606 null-String)))
(declare-const var1439 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1439 null-String)))
(define-const var965 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
(define-const var1262 Int (length/-134980193 var1606)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
(define-const var3983 Int (length/-134980193 var1439)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var453 Int (+ var1262 var3983)) ; Statement: $i2 = $i1 + $i0 
(assert true)
;(assert (<init>/543593434 var965 var453)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var965!1 String)
(declare-const var453!1 Int)
(assert true)
;(assert (append/672562846 var965!1 var1439)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var965!2 String)
(assert (= var965!2 (str.++ var965!1 var1439)))
(assert true)
(define-const var3803 Int (length/-134980193 var1606)) ; Statement: i3 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var645 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i3 goto $r3 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var645 var3803)) ; Cond: i6 >= i3 
(assert true)
(define-const var93 String (toString/-2075883882 var965!2)) ; Statement: $r3 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1265=com.github.jknack.handlebars.internal.Partial$1, var3290=r4, var1606=r1, var464=null_type, var1439=r2, var965=$r5, var1262=$i1, var3983=$i0, var453=$i2, var3803=i3, var645=i6, var93=$r3}
; {com.github.jknack.handlebars.internal.Partial$1=var1265, r4=var3290, r1=var1606, null_type=var464, r2=var1439, $r5=var965, $i1=var1262, $i0=var3983, $i2=var453, i3=var3803, i6=var645, $r3=var93}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 3,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.github.jknack.handlebars.internal.Partial$1;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	$r5 = new java.lang.StringBuilder;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	$i2 = $i1 + $i0;	specialinvoke $r5.<java.lang.StringBuilder: void <init>(int)>($i2);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	i3 = virtualinvoke r1.<java.lang.String: int length()>();	i6 = 0;	if i6 >= i3 goto $r3 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3
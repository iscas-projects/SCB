(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1023 0)
(declare-sort var727 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/2110755883 (String String) void)
(declare-fun replace/1417711676 (String Int Int String) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var1023 var1023)
(declare-const null-String String)
(declare-const var988 var1023) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var988 null-var1023)))
(declare-const var2006 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2006 null-String)))
(assert true)
(define-const var2300 Int (length/-134980193 var2006)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 > 20 goto $r1 = "..." 
(assert (> var2300 20)) ; Cond: $i0 > 20 
(define-const var1953 String "...") ; Statement: $r1 = "..." 
(assert true)
(define-const var3059 Int (length/-134980193 var1953)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var3585 Int (- 20 var3059)) ; Statement: $i2 = 20 - $i1 
(define-const var436 Int (div var3585 2)) ; Statement: i3 = $i2 / 2 
(define-const var717 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/2110755883 var717 var2006)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>(java.lang.String)>(r0) 

(declare-const var717!1 String)
(declare-const var2006!1 String)
(assert true)
(define-const var909 Int (length/-134980193 var2006!1)) ; Statement: $i4 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3154 Int (- var909 var436)) ; Statement: $i5 = $i4 - i3 
(assert true)
(define-const var1743 String (replace/1417711676 var717!1 var436 var3154 "...")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer replace(int,int,java.lang.String)>(i3, $i5, "...") 
(assert true)
(define-const var2769 String (toString/-222306083 var1743)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuffer), <init>/2110755883=([java.lang.StringBuffer, java.lang.String], void), replace/1417711676=([java.lang.StringBuffer, int, int, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var1023=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var988=r5, var2006=r0, var727=null_type, var2300=$i0, var1953=$r1, var3059=$i1, var3585=$i2, var436=i3, var717=$r2, var909=$i4, var3154=$i5, var1743=$r3, var2769=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var1023, r5=var988, r0=var2006, null_type=var727, $i0=var2300, $r1=var1953, $i1=var3059, $i2=var3585, i3=var436, $r2=var717, $i4=var909, $i5=var3154, $r3=var1743, $r4=var2769}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuffer: void <init>(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuffer: java.lang.StringBuffer replace(int,int,java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 3,"<java.lang.StringBuffer: void <init>(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer replace(int,int,java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 > 20 goto $r1 = "...";	$r1 = "...";	$i1 = virtualinvoke $r1.<java.lang.String: int length()>();	$i2 = 20 - $i1;	i3 = $i2 / 2;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>(java.lang.String)>(r0);	$i4 = virtualinvoke r0.<java.lang.String: int length()>();	$i5 = $i4 - i3;	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer replace(int,int,java.lang.String)>(i3, $i5, "...");	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.String toString()>();	return $r4
;block_num 2
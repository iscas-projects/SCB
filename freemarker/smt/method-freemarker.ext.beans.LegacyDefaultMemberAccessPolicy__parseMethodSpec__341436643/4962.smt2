(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2623 0)
(declare-sort var1924 0)
(declare-sort var2935 0)
(declare-sort var513 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun lastIndexOf/679652410 (String Int Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var1924_forName/-1606134976 (String) ClassObject)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2935-init () var2935)
(declare-fun <init>/1909349671 (var2935 String String) void)
(declare-fun countTokens/-2104213579 (var2935) Int)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun getMethod/1303228849 (ClassObject String (Array Int ClassObject)) var513)
(declare-const null-String String)
(declare-const var3664 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3664 null-String)))
(assert true)
(define-const var1313 Int (indexOf/-1037706067 var3664 40)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(40) 
(assert true)
(define-const var2024 Int (lastIndexOf/679652410 var3664 46 var1313)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int,int)>(46, i0) 
(assert (and true (and (>= 0 0) (>= (str.len var3664) var2024) (>= var2024 0))))
(define-const var625 String (substring/-1240304868 var3664 0 var2024)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i1) 
(define-const var3847 ClassObject (var1924_forName/-1606134976 var625)) ; Statement: r2 = staticinvoke <freemarker.template.utility.ClassUtil: java.lang.Class forName(java.lang.String)>($r1) 
(define-const var1268 Int (+ var2024 1)) ; Statement: $i2 = i1 + 1 
(assert (and true (and (>= var1268 0) (>= (str.len var3664) var1313) (>= var1313 var1268))))
(define-const var3705 String (substring/-1240304868 var3664 var1268 var1313)) ; Statement: r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>($i2, i0) 
(define-const var3909 Int (+ var1313 1)) ; Statement: $i5 = i0 + 1 
(assert true)
(define-const var1599 Int (length/-134980193 var3664)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1678 Int (- var1599 1)) ; Statement: $i4 = $i3 - 1 
(assert (and true (and (>= var3909 0) (>= (str.len var3664) var1678) (>= var1678 var3909))))
(define-const var1274 String (substring/-1240304868 var3664 var3909 var1678)) ; Statement: r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>($i5, $i4) 
(define-const var80 var2935 var2935-init) ; Statement: $r5 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/1909349671 var80 var1274 ",")) ; Statement: specialinvoke $r5.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>(r4, ",") 

(declare-const var80!1 var2935)
(declare-const var1274!1 String)
(declare-const var1518 String)
(assert true)
(define-const var1272 Int (countTokens/-2104213579 var80!1)) ; Statement: i6 = virtualinvoke $r5.<java.util.StringTokenizer: int countTokens()>() 
(define-const var2070 (Array Int ClassObject) arr-ClassObject-init) ; Statement: r6 = newarray (java.lang.Class)[i6] 
(define-const var1398 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i6 goto $r7 = virtualinvoke r2.<java.lang.Class: java.lang.reflect.Method getMethod(java.lang.String,java.lang.Class[])>(r3, r6) 
(assert (>= var1398 var1272)) ; Cond: i7 >= i6 
(assert true)
(define-const var447 var513 (getMethod/1303228849 var3847 var3705 var2070)) ; Statement: $r7 = virtualinvoke r2.<java.lang.Class: java.lang.reflect.Method getMethod(java.lang.String,java.lang.Class[])>(r3, r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), lastIndexOf/679652410=([java.lang.String, int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var1924_forName/-1606134976=([java.lang.String], java.lang.Class), length/-134980193=([java.lang.String], int), var2935-init=([], java.util.StringTokenizer), <init>/1909349671=([java.util.StringTokenizer, java.lang.String, java.lang.String], void), countTokens/-2104213579=([java.util.StringTokenizer], int), arr-ClassObject-init=([], java.lang.Class[]), getMethod/1303228849=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method)}
; {var3664=r0, var2623=null_type, var1313=i0, var2024=i1, var625=$r1, var1924=freemarker.template.utility.ClassUtil, var3847=r2, var1268=$i2, var3705=r3, var3909=$i5, var1599=$i3, var1678=$i4, var1274=r4, var2935=java.util.StringTokenizer, var80=$r5, var1518=",", var1272=i6, var2070=r6, var1398=i7, var513=java.lang.reflect.Method, var447=$r7}
; {r0=var3664, null_type=var2623, i0=var1313, i1=var2024, $r1=var625, freemarker.template.utility.ClassUtil=var1924, r2=var3847, $i2=var1268, r3=var3705, $i5=var3909, $i3=var1599, $i4=var1678, r4=var1274, java.util.StringTokenizer=var2935, $r5=var80, ","=var1518, i6=var1272, r6=var2070, i7=var1398, java.lang.reflect.Method=var513, $r7=var447}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int lastIndexOf(int,int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int lastIndexOf(int,int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 3,"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(40);	i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int,int)>(46, i0);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i1);	r2 = staticinvoke <freemarker.template.utility.ClassUtil: java.lang.Class forName(java.lang.String)>($r1);	$i2 = i1 + 1;	r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>($i2, i0);	$i5 = i0 + 1;	$i3 = virtualinvoke r0.<java.lang.String: int length()>();	$i4 = $i3 - 1;	r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>($i5, $i4);	$r5 = new java.util.StringTokenizer;	specialinvoke $r5.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>(r4, ",");	i6 = virtualinvoke $r5.<java.util.StringTokenizer: int countTokens()>();	r6 = newarray (java.lang.Class)[i6];	i7 = 0;	if i7 >= i6 goto $r7 = virtualinvoke r2.<java.lang.Class: java.lang.reflect.Method getMethod(java.lang.String,java.lang.Class[])>(r3, r6);	$r7 = virtualinvoke r2.<java.lang.Class: java.lang.reflect.Method getMethod(java.lang.String,java.lang.Class[])>(r3, r6);	return $r7
;block_num 3
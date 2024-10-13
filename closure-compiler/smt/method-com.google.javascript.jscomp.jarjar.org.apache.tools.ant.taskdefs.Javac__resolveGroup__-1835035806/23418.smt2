(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3969 0)
(declare-sort var1624 0)
(declare-sort var1296 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3969-init () var3969)
(declare-fun <init>/-325640736 (var3969) void)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun String_subSequence/-1087362312 (String Int Int) String)
(declare-fun var1296_expandGroups/-915044697 (String) var1624)
(declare-fun var1624_addAll/-1672669757 (var1624 var1624) Bool)
(declare-fun cast-from-var3969-to-var1624 (var3969) var1624)
(declare-const null-String String)
(declare-const var3929 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var3929 null-String)))
(define-const var3421 var3969 var3969-init) ; Statement: $r6 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3421)) ; Statement: specialinvoke $r6.<java.util.ArrayList: void <init>()>() 

(declare-const var3421!1 var3969)
(define-const var149 Int 0) ; Statement: i3 = 0 
(define-const var292 Int 0) ; Statement: i4 = 0 
(define-const var1751 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var1550 Int (String_length/-667254855 var3929)) ; Statement: $i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
 ; Statement: if i5 >= $i0 goto $i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(assert (>= var1751 var1550)) ; Cond: i5 >= $i0 
(define-const var2927 Int (String_length/-667254855 var3929)) ; Statement: $i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(define-const var143 String (String_subSequence/-1087362312 var3929 var149 var2927)) ; Statement: $r2 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(i3, $i1) 
(define-const var2798 var1624 (var1296_expandGroups/-915044697 var143)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: java.util.Collection expandGroups(java.lang.CharSequence)>($r2) 
;(assert (var1624_addAll/-1672669757 (cast-from-var3969-to-var1624 var3421!1) var2798)) ; Statement: interfaceinvoke $r6.<java.util.Collection: boolean addAll(java.util.Collection)>($r3) 

(declare-const var3421!2 var3969)
(declare-const var2798!1 var1624)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var3969-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), String_length/-667254855=([java.lang.CharSequence], int), String_subSequence/-1087362312=([java.lang.CharSequence, int, int], java.lang.CharSequence), var1296_expandGroups/-915044697=([java.lang.CharSequence], java.util.Collection), var1624_addAll/-1672669757=([java.util.Collection, java.util.Collection], boolean), cast-from-var3969-to-var1624=([java.util.ArrayList], java.util.Collection)}
; {var3929=r1, var3969=java.util.ArrayList, var3421=$r6, var149=i3, var292=i4, var1751=i5, var1550=$i0, var2927=$i1, var143=$r2, var1624=java.util.Collection, var1296=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac, var2798=$r3}
; {r1=var3929, java.util.ArrayList=var3969, $r6=var3421, i3=var149, i4=var292, i5=var1751, $i0=var1550, $i1=var2927, $r2=var143, java.util.Collection=var1624, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac=var1296, $r3=var2798}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>
;cnt {"<java.lang.CharSequence: int length()>": 2,"<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>": 1}
;stmts r1 := @parameter0: java.lang.CharSequence;	$r6 = new java.util.ArrayList;	specialinvoke $r6.<java.util.ArrayList: void <init>()>();	i3 = 0;	i4 = 0;	i5 = 0;	$i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	if i5 >= $i0 goto $i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	$i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	$r2 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(i3, $i1);	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: java.util.Collection expandGroups(java.lang.CharSequence)>($r2);	interfaceinvoke $r6.<java.util.Collection: boolean addAll(java.util.Collection)>($r3);	return $r6
;block_num 3
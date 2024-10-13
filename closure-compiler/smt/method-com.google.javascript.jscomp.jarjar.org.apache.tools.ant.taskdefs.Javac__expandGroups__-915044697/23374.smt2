(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var653 0)
(declare-sort var3228 0)
(declare-sort var2729 0)
(declare-sort var2568 0)
(declare-sort var36 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var653-init () var653)
(declare-fun <init>/-325640736 (var653) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3228_add/328494887 (var3228 var2729) Bool)
(declare-fun cast-from-var653-to-var3228 (var653) var3228)
(declare-fun cast-from-String-to-var2729 (String) var2729)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun String_charAt/1466887330 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2568_getGroupEndIndex/1389965867 (String Int) Int)
(declare-fun var36-init () var36)
(declare-fun arr-var2729-init () (Array Int var2729))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var2729 (Int) var2729)
(declare-fun String_format/1339386452 (String (Array Int var2729)) String)
(declare-fun <init>/1864341934 (var36 String) void)
(declare-const null-String String)
(declare-const null-__Array__Int__var2729__ (Array Int var2729))
(declare-const var1324 String) ; Statement: r3 := @parameter0: java.lang.CharSequence 
(assert (not (= var1324 null-String)))
(define-const var544 var653 var653-init) ; Statement: $r30 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var544)) ; Statement: specialinvoke $r30.<java.util.ArrayList: void <init>()>() 

(declare-const var544!1 var653)
(define-const var1372 var653 var544!1) ; Statement: r26 = $r30 
(define-const var3885 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3885)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3885!1 String)
(assert (= var3885!1 ""))
;(assert (var3228_add/328494887 (cast-from-var653-to-var3228 var544!1) (cast-from-String-to-var2729 var3885!1))) ; Statement: interfaceinvoke $r30.<java.util.List: boolean add(java.lang.Object)>($r31) 

(declare-const var544!2 var653)
(declare-const var3885!2 String)
(define-const var3767 String String-init) ; Statement: $r32 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3767)) ; Statement: specialinvoke $r32.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3767!1 String)
(assert (= var3767!1 ""))
(define-const var3653 String var3767!1) ; Statement: r27 = $r32 
(define-const var954 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(define-const var3636 Int (String_length/-667254855 var1324)) ; Statement: $i0 = interfaceinvoke r3.<java.lang.CharSequence: int length()>() 
 ; Statement: if i7 >= $i0 goto r28 = interfaceinvoke r26.<java.util.List: java.util.Iterator iterator()>() 
(assert (not (>= var954 var3636))) ; Negate: Cond: i7 >= $i0  
(define-const var2463 Int (String_charAt/1466887330 var1324 var954)) ; Statement: c8 = interfaceinvoke r3.<java.lang.CharSequence: char charAt(int)>(i7) 
(define-const var1403 Int (cast-from-Int-to-Int var2463)) ; Statement: $i9 = (int) c8 
 ; Statement: lookupswitch($i9) {     case 123: goto i1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: int getGroupEndIndex(java.lang.CharSequence,int)>(r3, i7);     default: goto virtualinvoke r27.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c8); } 
(assert (and (= var1403 123) true)) ; Intersect: Cond: $i9 == 123  and Non Conditional 
(define-const var2757 Int (var2568_getGroupEndIndex/1389965867 var1324 var954)) ; Statement: i1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: int getGroupEndIndex(java.lang.CharSequence,int)>(r3, i7) 
 ; Statement: if i1 >= 0 goto $i2 = i7 + 1 
(assert (not (>= var2757 0))) ; Negate: Cond: i1 >= 0  
(define-const var3013 var36 var36-init) ; Statement: $r33 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var38 (Array Int var2729) arr-var2729-init) ; Statement: $r23 = newarray (java.lang.Object)[2] 
(declare-const var38!1 (Array Int var2729))
(assert (not (= var38!1 null-__Array__Int__var2729__)))
(assert (= (select var38!1 0) (cast-from-String-to-var2729 var1324))) ; Statement: $r23[0] = r3 
(define-const var1563 Int (Int_valueOf/-1371140006 var954)) ; Statement: $r24 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i7) 
(declare-const var38!2 (Array Int var2729))
(assert (not (= var38!2 null-__Array__Int__var2729__)))
(assert (= (select var38!2 1) (cast-from-Int-to-var2729 var1563))) ; Statement: $r23[1] = $r24 
(define-const var2485 String (String_format/1339386452 "Unclosed group %s, starting at: %d" var38!2)) ; Statement: $r25 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unclosed group %s, starting at: %d", $r23) 
(assert true)
;(assert (<init>/1864341934 var3013 var2485)) ; Statement: specialinvoke $r33.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r25) 

(declare-const var3013!1 var36)
(declare-const var2485!1 String)
 ; Statement: throw $r33 
(check-sat)
(get-model)
(get-unsat-core)
; {var653-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3228_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var653-to-var3228=([java.util.ArrayList], java.util.List), cast-from-String-to-var2729=([java.lang.StringBuilder], java.lang.Object), String_length/-667254855=([java.lang.CharSequence], int), String_charAt/1466887330=([java.lang.CharSequence, int], char), cast-from-Int-to-Int=([char], int), var2568_getGroupEndIndex/1389965867=([java.lang.CharSequence, int], int), var36-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), arr-var2729-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var2729=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var1324=r3, var653=java.util.ArrayList, var544=$r30, var1372=r26, var3885=$r31, var3228=java.util.List, var2729=java.lang.Object, var3767=$r32, var3653=r27, var954=i7, var3636=$i0, var2463=c8, var1403=$i9, var2568=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac, var2757=i1, var36=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3013=$r33, var38=$r23, var1563=$r24, var2485=$r25}
; {r3=var1324, java.util.ArrayList=var653, $r30=var544, r26=var1372, $r31=var3885, java.util.List=var3228, java.lang.Object=var2729, $r32=var3767, r27=var3653, i7=var954, $i0=var3636, c8=var2463, $i9=var1403, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac=var2568, i1=var2757, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var36, $r33=var3013, $r23=var38, $r24=var1563, $r25=var2485}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.CharSequence: int length()>;	<java.lang.CharSequence: char charAt(int)>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.CharSequence: int length()>": 1,"<java.lang.CharSequence: char charAt(int)>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r3 := @parameter0: java.lang.CharSequence;	$r30 = new java.util.ArrayList;	specialinvoke $r30.<java.util.ArrayList: void <init>()>();	r26 = $r30;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	interfaceinvoke $r30.<java.util.List: boolean add(java.lang.Object)>($r31);	$r32 = new java.lang.StringBuilder;	specialinvoke $r32.<java.lang.StringBuilder: void <init>()>();	r27 = $r32;	i7 = 0;	$i0 = interfaceinvoke r3.<java.lang.CharSequence: int length()>();	if i7 >= $i0 goto r28 = interfaceinvoke r26.<java.util.List: java.util.Iterator iterator()>();	c8 = interfaceinvoke r3.<java.lang.CharSequence: char charAt(int)>(i7);	$i9 = (int) c8;	lookupswitch($i9) {     case 123: goto i1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: int getGroupEndIndex(java.lang.CharSequence,int)>(r3, i7);     default: goto virtualinvoke r27.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c8); };	i1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javac: int getGroupEndIndex(java.lang.CharSequence,int)>(r3, i7);	if i1 >= 0 goto $i2 = i7 + 1;	$r33 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r23 = newarray (java.lang.Object)[2];	$r23[0] = r3;	$r24 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i7);	$r23[1] = $r24;	$r25 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unclosed group %s, starting at: %d", $r23);	specialinvoke $r33.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r25);	throw $r33
;block_num 5
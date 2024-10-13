(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var40 0)
(declare-sort var1569 0)
(declare-sort var2687 0)
(declare-sort var3751 0)
(declare-sort var3159 0)
(declare-sort var3143 0)
(declare-sort var3030 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3751-init () var3751)
(declare-fun <init>/-1294796817 (var3751 var1569 Bool Bool) void)
(declare-fun managingTask/-1614869221 (var40) var3159)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3143) String)
(declare-fun cast-from-var1569-to-var3143 (var1569) var3143)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1039617696 (var3159 String Int) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var3030_fill/1918582986 ((Array Int Int) Int) void)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-fun getLength-Arr-var1569-1 ((Array Int var1569)) Int)
(declare-const null-var40 var40)
(declare-const null-__Array__Int__var1569__ (Array Int var1569))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var430 var40) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Redirector 
(assert (not (= var430 null-var40)))
(declare-const var2616 (Array Int var1569)) ; Statement: r1 := @parameter0: java.io.File[] 
(assert (not (= var2616 null-__Array__Int__var1569__)))
(declare-const var3091 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var3091 null-String)))
(declare-const var3767 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3767 null-Int)))
(declare-const var2017 Bool) ; Statement: z0 := @parameter3: boolean 
(assert (not (= var2017 null-Bool)))
(declare-const var1187 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var1187 null-Bool)))
(define-const var1306 var3751 var3751-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LazyFileOutputStream 
(define-const var41 var1569 (select var2616 0)) ; Statement: $r2 = r1[0] 
(assert true)
;(assert (<init>/-1294796817 var1306 var41 var2017 var1187)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LazyFileOutputStream: void <init>(java.io.File,boolean,boolean)>($r2, z0, z1) 

(declare-const var1306!1 var3751)
(declare-const var41!1 var1569)
(declare-const var2017!1 Bool)
(declare-const var1187!1 Bool)
(define-const var143 var3159 (managingTask/-1614869221 var430)) ; Statement: $r5 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Redirector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent managingTask> 
(define-const var1224 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1224)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1224!1 String)
(assert (= var1224!1 ""))
(assert true)
(define-const var992 String (append/672562846 var1224!1 var3091)) ; Statement: $r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var1224!2 String)
(assert (= var1224!2 (str.++ var1224!1 var3091)))
(define-const var1697 var1569 (select var2616 0)) ; Statement: $r7 = r1[0] 
(assert true)
(define-const var3196 String (append/-1031950772 var992 (cast-from-var1569-to-var3143 var1697))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var992!1 String)
(assert (str.prefixof var992 var992!1))
(assert true)
(define-const var3671 String (toString/-2075883882 var3196)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/-1039617696 var143 var3671 var3767)) ; Statement: virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent: void log(java.lang.String,int)>($r10, i0) 

(declare-const var143!1 var3159)
(declare-const var3671!1 String)
(declare-const var3767!1 Int)
(assert true)
(define-const var714 Int (length/-134980193 var3091)) ; Statement: $i1 = virtualinvoke r6.<java.lang.String: int length()>() 
(define-const var2876 (Array Int Int) arr-Int-init) ; Statement: r11 = newarray (char)[$i1] 
;(assert (var3030_fill/1918582986 var2876 32)) ; Statement: staticinvoke <java.util.Arrays: void fill(char[],char)>(r11, 32) 

(declare-const var2876!1 (Array Int Int))
(declare-const var1469 Int)
(define-const var1557 String String-init) ; Statement: $r12 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var1557 var2876!1)) ; Statement: specialinvoke $r12.<java.lang.String: void <init>(char[])>(r11) 

(declare-const var1557!1 String)
(declare-const var2876!2 (Array Int Int))
(define-const var670 Int 1) ; Statement: i3 = 1 
(assert true) ; Non Conditional
(define-const var1736 Int (getLength-Arr-var1569-1 var2616)) ; Statement: $i2 = lengthof r1 
 ; Statement: if i3 >= $i2 goto return $r0 
(assert (>= var670 var1736)) ; Cond: i3 >= $i2 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3751-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LazyFileOutputStream), <init>/-1294796817=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LazyFileOutputStream, java.io.File, boolean, boolean], void), managingTask/-1614869221=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Redirector], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1569-to-var3143=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1039617696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, java.lang.String, int], void), length/-134980193=([java.lang.String], int), arr-Int-init=([], char[]), var3030_fill/1918582986=([char[], char], void), <init>/-915723298=([java.lang.String, char[]], void), getLength-Arr-var1569-1=([java.io.File[]], int)}
; {var40=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Redirector, var430=r3, var1569=java.io.File, var2616=r1, var3091=r6, var2687=null_type, var3767=i0, var2017=z0, var1187=z1, var3751=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LazyFileOutputStream, var1306=$r0, var41=$r2, var3159=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var143=$r5, var1224=$r4, var992=$r8, var1697=$r7, var3143=java.lang.Object, var3196=$r9, var3671=$r10, var714=$i1, var2876=r11, var3030=java.util.Arrays, var1469=32, var1557=$r12, var670=i3, var1736=$i2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Redirector=var40, r3=var430, java.io.File=var1569, r1=var2616, r6=var3091, null_type=var2687, i0=var3767, z0=var2017, z1=var1187, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LazyFileOutputStream=var3751, $r0=var1306, $r2=var41, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3159, $r5=var143, $r4=var1224, $r8=var992, $r7=var1697, java.lang.Object=var3143, $r9=var3196, $r10=var3671, $i1=var714, r11=var2876, java.util.Arrays=var3030, 32=var1469, $r12=var1557, i3=var670, $i2=var1736}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: void <init>(char[])>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: void <init>(char[])>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Redirector;	r1 := @parameter0: java.io.File[];	r6 := @parameter1: java.lang.String;	i0 := @parameter2: int;	z0 := @parameter3: boolean;	z1 := @parameter4: boolean;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LazyFileOutputStream;	$r2 = r1[0];	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.LazyFileOutputStream: void <init>(java.io.File,boolean,boolean)>($r2, z0, z1);	$r5 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Redirector: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent managingTask>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r7 = r1[0];	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent: void log(java.lang.String,int)>($r10, i0);	$i1 = virtualinvoke r6.<java.lang.String: int length()>();	r11 = newarray (char)[$i1];	staticinvoke <java.util.Arrays: void fill(char[],char)>(r11, 32);	$r12 = new java.lang.String;	specialinvoke $r12.<java.lang.String: void <init>(char[])>(r11);	i3 = 1;	$i2 = lengthof r1;	if i3 >= $i2 goto return $r0;	return $r0
;block_num 3
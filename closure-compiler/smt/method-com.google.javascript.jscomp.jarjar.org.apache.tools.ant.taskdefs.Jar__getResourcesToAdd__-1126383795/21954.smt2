(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1090 0)
(declare-sort var122 0)
(declare-sort var2333 0)
(declare-sort var2087 0)
(declare-sort var145 0)
(declare-sort var635 0)
(declare-sort var810 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun skipWriting/1631877189 (var2087) Bool)
(declare-fun cast-from-var1090-to-var2087 (var1090) var2087)
(declare-fun grabManifests/2056094276 (var1090 (Array Int var122)) (Array Int (Array Int var145)))
(declare-fun getLength-Arr-var145-2 ((Array Int (Array Int var145))) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var635 String Int) void)
(declare-fun cast-from-var1090-to-var635 (var1090) var635)
(declare-fun var810-init () var810)
(declare-fun <init>/-1380037571 (var810 Bool (Array Int (Array Int var145))) void)
(declare-const null-var1090 var1090)
(declare-const null-__Array__Int__var122__ (Array Int var122))
(declare-const null-var2333 var2333)
(declare-const null-Bool Bool)
(declare-const var1112 var1090) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar 
(assert (not (= var1112 null-var1090)))
(declare-const var2930 (Array Int var122)) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection[] 
(assert (not (= var2930 null-__Array__Int__var122__)))
(declare-const var727 var2333) ; Statement: r1 := @parameter1: java.io.File 
(assert (not (= var727 null-var2333)))
(declare-const var785 Bool) ; Statement: z5 := @parameter2: boolean 
(assert (not (= var785 null-Bool)))
(define-const var1172 Bool (skipWriting/1631877189 (cast-from-var1090-to-var2087 var1112))) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: boolean skipWriting> 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<java.io.File: boolean exists()>() 
(assert (not (= (ite var1172 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2073 (Array Int (Array Int var145)) (grabManifests/2056094276 var1112 var2930)) ; Statement: r25 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource[][] grabManifests(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection[])>(r2) 
(define-const var343 Int 0) ; Statement: i3 = 0 
(define-const var3763 Int (getLength-Arr-var145-2 var2073)) ; Statement: i0 = lengthof r25 
(define-const var1539 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto $r6 = new java.lang.StringBuilder 
(assert (>= var1539 var3763)) ; Cond: i4 >= i0 
(define-const var1315 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1315)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1315!1 String)
(assert (= var1315!1 ""))
(assert true)
(define-const var2236 String (append/672562846 var1315!1 "found a total of ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("found a total of ") 
(declare-const var1315!2 String)
(assert (= var1315!2 (str.++ var1315!1 "found a total of ")))
(assert true)
(define-const var121 String (append/-1001720160 var2236 var343)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var2236!1 String)
(assert (str.prefixof var2236 var2236!1))
(assert true)
(define-const var915 String (append/672562846 var121 " manifests in ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" manifests in ") 
(declare-const var121!1 String)
(assert (= var121!1 (str.++ var121 " manifests in ")))
(define-const var1077 Int (getLength-Arr-var145-2 var2073)) ; Statement: $i1 = lengthof r25 
(assert true)
(define-const var558 String (append/-1001720160 var915 var1077)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var915!1 String)
(assert (str.prefixof var915 var915!1))
(assert true)
(define-const var636 String (append/672562846 var558 " resource collections")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" resource collections") 
(declare-const var558!1 String)
(assert (= var558!1 (str.++ var558 " resource collections")))
(assert true)
(define-const var457 String (toString/-2075883882 var636)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var1090-to-var635 var1112) var457 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: void log(java.lang.String,int)>($r12, 3) 

(declare-const var1112!1 var1090)
(declare-const var457!1 String)
(declare-const var1559 Int)
(define-const var9 var810 var810-init) ; Statement: $r13 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip$ArchiveState 
(assert true)
;(assert (<init>/-1380037571 var9 (ite (= 1 1) true false) var2073)) ; Statement: specialinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip$ArchiveState: void <init>(boolean,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource[][])>(1, r25) 

(declare-const var9!1 var810)
(declare-const var2876 Int)
(declare-const var2073!1 (Array Int (Array Int var145)))
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {skipWriting/1631877189=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip], boolean), cast-from-var1090-to-var2087=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip), grabManifests/2056094276=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection[]], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource[][]), getLength-Arr-var145-2=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource[][]], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var1090-to-var635=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), var810-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip$ArchiveState), <init>/-1380037571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip$ArchiveState, boolean, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource[][]], void)}
; {var1090=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar, var1112=r0, var122=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection, var2930=r2, var2333=java.io.File, var727=r1, var785=z5, var2087=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip, var1172=$z0, var145=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var2073=r25, var343=i3, var3763=i0, var1539=i4, var1315=$r6, var2236=$r7, var121=$r8, var915=$r9, var1077=$i1, var558=$r10, var636=$r11, var457=$r12, var635=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1559=3, var810=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip$ArchiveState, var9=$r13, var2876=1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar=var1090, r0=var1112, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection=var122, r2=var2930, java.io.File=var2333, r1=var727, z5=var785, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip=var2087, $z0=var1172, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var145, r25=var2073, i3=var343, i0=var3763, i4=var1539, $r6=var1315, $r7=var2236, $r8=var121, $r9=var915, $i1=var1077, $r10=var558, $r11=var636, $r12=var457, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var635, 3=var1559, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip$ArchiveState=var810, $r13=var9, 1=var2876}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection[];	r1 := @parameter1: java.io.File;	z5 := @parameter2: boolean;	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: boolean skipWriting>;	if $z0 == 0 goto $z1 = virtualinvoke r1.<java.io.File: boolean exists()>();	r25 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource[][] grabManifests(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection[])>(r2);	i3 = 0;	i0 = lengthof r25;	i4 = 0;	if i4 >= i0 goto $r6 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("found a total of ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" manifests in ");	$i1 = lengthof r25;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" resource collections");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Jar: void log(java.lang.String,int)>($r12, 3);	$r13 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip$ArchiveState;	specialinvoke $r13.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Zip$ArchiveState: void <init>(boolean,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource[][])>(1, r25);	return $r13
;block_num 4
(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var686 0)
(declare-sort var3298 0)
(declare-sort var714 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun packageName/43390966 (var686) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun directory/43390966 (var686) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun hostname/43390966 (var686) String)
(declare-fun port/43390966 (var686) Int)
(declare-fun var686_fetchClass0/1543394096 (String Int String) var714)
(declare-const null-var686 var686)
(declare-const null-String String)
(declare-const var3164 var686) ; Statement: r0 := @this: org.apache.ibatis.javassist.URLClassPath 
(assert (not (= var3164 null-var686)))
(declare-const var2322 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2322 null-String)))
(define-const var3955 String (packageName/43390966 var3164)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.URLClassPath: java.lang.String packageName> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.StringBuilder 
(assert (= var3955 null-String)) ; Cond: $r1 == null 
(define-const var277 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var277)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var277!1 String)
(assert (= var277!1 ""))
(define-const var187 String (directory/43390966 var3164)) ; Statement: $r3 = r0.<org.apache.ibatis.javassist.URLClassPath: java.lang.String directory> 
(assert true)
(define-const var1467 String (append/672562846 var277!1 var187)) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var277!2 String)
(assert (= var277!2 (str.++ var277!1 var187)))
(assert true)
(define-const var500 String (replace/1524665721 var2322 46 47)) ; Statement: $r5 = virtualinvoke r4.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var3905 String (append/672562846 var1467 var500)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1467!1 String)
(assert (= var1467!1 (str.++ var1467 var500)))
(assert true)
(define-const var1214 String (append/672562846 var3905 ".class")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var3905!1 String)
(assert (= var3905!1 (str.++ var3905 ".class")))
(assert true)
(define-const var353 String (toString/-2075883882 var1214)) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1202 String (hostname/43390966 var3164)) ; Statement: $r9 = r0.<org.apache.ibatis.javassist.URLClassPath: java.lang.String hostname> 
(define-const var752 Int (port/43390966 var3164)) ; Statement: $i0 = r0.<org.apache.ibatis.javassist.URLClassPath: int port> 
(define-const var1427 var714 (var686_fetchClass0/1543394096 var1202 var752 var353)) ; Statement: $r10 = staticinvoke <org.apache.ibatis.javassist.URLClassPath: java.net.URLConnection fetchClass0(java.lang.String,int,java.lang.String)>($r9, $i0, $r12) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {packageName/43390966=([org.apache.ibatis.javassist.URLClassPath], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), directory/43390966=([org.apache.ibatis.javassist.URLClassPath], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), replace/1524665721=([java.lang.String, char, char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), hostname/43390966=([org.apache.ibatis.javassist.URLClassPath], java.lang.String), port/43390966=([org.apache.ibatis.javassist.URLClassPath], int), var686_fetchClass0/1543394096=([java.lang.String, int, java.lang.String], java.net.URLConnection)}
; {var686=org.apache.ibatis.javassist.URLClassPath, var3164=r0, var2322=r4, var3298=null_type, var3955=$r1, var277=$r2, var187=$r3, var1467=$r6, var500=$r5, var3905=$r7, var1214=$r8, var353=$r12, var1202=$r9, var752=$i0, var714=java.net.URLConnection, var1427=$r10}
; {org.apache.ibatis.javassist.URLClassPath=var686, r0=var3164, r4=var2322, null_type=var3298, $r1=var3955, $r2=var277, $r3=var187, $r6=var1467, $r5=var500, $r7=var3905, $r8=var1214, $r12=var353, $r9=var1202, $i0=var752, java.net.URLConnection=var714, $r10=var1427}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.URLClassPath;	r4 := @parameter0: java.lang.String;	$r1 = r0.<org.apache.ibatis.javassist.URLClassPath: java.lang.String packageName>;	if $r1 == null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<org.apache.ibatis.javassist.URLClassPath: java.lang.String directory>;	$r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke r4.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = r0.<org.apache.ibatis.javassist.URLClassPath: java.lang.String hostname>;	$i0 = r0.<org.apache.ibatis.javassist.URLClassPath: int port>;	$r10 = staticinvoke <org.apache.ibatis.javassist.URLClassPath: java.net.URLConnection fetchClass0(java.lang.String,int,java.lang.String)>($r9, $i0, $r12);	return $r10
;block_num 2
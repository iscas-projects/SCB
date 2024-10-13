(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3220 0)
(declare-sort var3461 0)
(declare-sort var1811 0)
(declare-sort var2381 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun jarfileEntries/-1438564150 (var3220) var1811)
(declare-fun var1811_contains/1636690605 (var1811 var2381) Bool)
(declare-fun cast-from-String-to-var2381 (String) var2381)
(declare-const null-var3220 var3220)
(declare-const null-String String)
(declare-const var3487 var3220) ; Statement: r6 := @this: org.apache.ibatis.javassist.JarClassPath 
(assert (not (= var3487 null-var3220)))
(declare-const var3012 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3012 null-String)))
(define-const var2424 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2424)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2424!1 String)
(assert (= var2424!1 ""))
(assert true)
(define-const var2213 String (replace/1524665721 var3012 46 47)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
(assert true)
(define-const var803 String (append/672562846 var2424!1 var2213)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2424!2 String)
(assert (= var2424!2 (str.++ var2424!1 var2213)))
(assert true)
(define-const var3517 String (append/672562846 var803 ".class")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var803!1 String)
(assert (= var803!1 (str.++ var803 ".class")))
(assert true)
(define-const var2064 String (toString/-2075883882 var3517)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3923 var1811 (jarfileEntries/-1438564150 var3487)) ; Statement: $r7 = r6.<org.apache.ibatis.javassist.JarClassPath: java.util.Set jarfileEntries> 
(define-const var163 Bool (var1811_contains/1636690605 var3923 (cast-from-String-to-var2381 var2064))) ; Statement: $z0 = interfaceinvoke $r7.<java.util.Set: boolean contains(java.lang.Object)>(r5) 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var163 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), replace/1524665721=([java.lang.String, char, char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), jarfileEntries/-1438564150=([org.apache.ibatis.javassist.JarClassPath], java.util.Set), var1811_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var2381=([java.lang.String], java.lang.Object)}
; {var3220=org.apache.ibatis.javassist.JarClassPath, var3487=r6, var3012=r1, var3461=null_type, var2424=$r0, var2213=$r2, var803=$r3, var3517=$r4, var2064=r5, var1811=java.util.Set, var3923=$r7, var2381=java.lang.Object, var163=$z0}
; {org.apache.ibatis.javassist.JarClassPath=var3220, r6=var3487, r1=var3012, null_type=var3461, $r0=var2424, $r2=var2213, $r3=var803, $r4=var3517, r5=var2064, java.util.Set=var1811, $r7=var3923, java.lang.Object=var2381, $z0=var163}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.apache.ibatis.javassist.JarClassPath;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = r6.<org.apache.ibatis.javassist.JarClassPath: java.util.Set jarfileEntries>;	$z0 = interfaceinvoke $r7.<java.util.Set: boolean contains(java.lang.Object)>(r5);	if $z0 == 0 goto return null;	return null
;block_num 2
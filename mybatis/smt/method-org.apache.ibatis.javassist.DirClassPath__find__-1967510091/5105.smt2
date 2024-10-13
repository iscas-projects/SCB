(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2211 0)
(declare-sort var120 0)
(declare-sort var66 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun directory/591197848 (var2211) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var66-init () var66)
(declare-fun <init>/-1681595970 (var66 String) void)
(declare-fun exists/1072868559 (var66) Bool)
(declare-const null-var2211 var2211)
(declare-const null-String String)
(declare-const var66-separatorChar Int)
(declare-const var1876 var2211) ; Statement: r1 := @this: org.apache.ibatis.javassist.DirClassPath 
(assert (not (= var1876 null-var2211)))
(declare-const var2774 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2774 null-String)))
(define-const var952 Int var66-separatorChar) ; Statement: c0 = <java.io.File: char separatorChar> 
(define-const var3301 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3301)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3301!1 String)
(assert (= var3301!1 ""))
(define-const var3403 String (directory/591197848 var1876)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.DirClassPath: java.lang.String directory> 
(assert true)
(define-const var3985 String (append/672562846 var3301!1 var3403)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3301!2 String)
(assert (= var3301!2 (str.++ var3301!1 var3403)))
(assert true)
(define-const var655 String (append/-1166366385 var3985 var952)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var3985!1 String)
(assert (str.prefixof var3985 var3985!1))
(assert true)
(define-const var2374 String (replace/1524665721 var2774 46 var952)) ; Statement: $r5 = virtualinvoke r4.<java.lang.String: java.lang.String replace(char,char)>(46, c0) 
(assert true)
(define-const var2047 String (append/672562846 var655 var2374)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var655!1 String)
(assert (= var655!1 (str.++ var655 var2374)))
(assert true)
(define-const var1784 String (append/672562846 var2047 ".class")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class") 
(declare-const var2047!1 String)
(assert (= var2047!1 (str.++ var2047 ".class")))
(assert true)
(define-const var2966 String (toString/-2075883882 var1784)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var529 var66 var66-init) ; Statement: $r10 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var529 var2966)) ; Statement: specialinvoke $r10.<java.io.File: void <init>(java.lang.String)>(r9) 

(declare-const var529!1 var66)
(declare-const var2966!1 String)
(assert true)
(define-const var3227 Bool (exists/1072868559 var529!1)) ; Statement: $z0 = virtualinvoke $r10.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var3227 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), directory/591197848=([org.apache.ibatis.javassist.DirClassPath], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), replace/1524665721=([java.lang.String, char, char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var66-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean)}
; {var2211=org.apache.ibatis.javassist.DirClassPath, var1876=r1, var2774=r4, var120=null_type, var66=java.io.File, var952=c0, var3301=$r0, var3403=$r2, var3985=$r3, var655=$r6, var2374=$r5, var2047=$r7, var1784=$r8, var2966=r9, var529=$r10, var3227=$z0}
; {org.apache.ibatis.javassist.DirClassPath=var2211, r1=var1876, r4=var2774, null_type=var120, java.io.File=var66, c0=var952, $r0=var3301, $r2=var3403, $r3=var3985, $r6=var655, $r5=var2374, $r7=var2047, $r8=var1784, r9=var2966, $r10=var529, $z0=var3227}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.DirClassPath;	r4 := @parameter0: java.lang.String;	c0 = <java.io.File: char separatorChar>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.ibatis.javassist.DirClassPath: java.lang.String directory>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	$r5 = virtualinvoke r4.<java.lang.String: java.lang.String replace(char,char)>(46, c0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".class");	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = new java.io.File;	specialinvoke $r10.<java.io.File: void <init>(java.lang.String)>(r9);	$z0 = virtualinvoke $r10.<java.io.File: boolean exists()>();	if $z0 == 0 goto return null;	return null
;block_num 2
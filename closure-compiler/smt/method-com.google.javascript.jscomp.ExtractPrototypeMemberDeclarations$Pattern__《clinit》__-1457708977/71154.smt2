(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var488 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var488-init () var488)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/-1048824105 (var488 String Int Int Int Int) void)
(declare-fun var488_$values/-854125665 () (Array Int var488))
(define-const var2395 var488 var488-init) ; Statement: $r0 = new com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern 
(define-const var1798 String "var t;") ; Statement: $r1 = "var t;" 
(assert true)
(define-const var3854 Int (length/-134980193 var1798)) ; Statement: $i4 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var765 String "t=y.prototype;") ; Statement: $r2 = "t=y.prototype;" 
(assert true)
(define-const var3775 Int (length/-134980193 var765)) ; Statement: $i3 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var716 String "t.y=") ; Statement: $r3 = "t.y=" 
(assert true)
(define-const var1426 Int (length/-134980193 var716)) ; Statement: $i1 = virtualinvoke $r3.<java.lang.String: int length()>() 
(define-const var1050 String "x[p].y=") ; Statement: $r4 = "x[p].y=" 
(assert true)
(define-const var3290 Int (length/-134980193 var1050)) ; Statement: $i0 = virtualinvoke $r4.<java.lang.String: int length()>() 
(define-const var243 Int (- var1426 var3290)) ; Statement: $i2 = $i1 - $i0 
(assert true)
;(assert (<init>/-1048824105 var2395 "USE_GLOBAL_TEMP" 0 var3854 var3775 var243)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern: void <init>(java.lang.String,int,int,int,int)>("USE_GLOBAL_TEMP", 0, $i4, $i3, $i2) 

(declare-const var2395!1 var488)
(declare-const var400 String)
(declare-const var906 Int)
(declare-const var3854!1 Int)
(declare-const var3775!1 Int)
(declare-const var243!1 Int)
(define-const var1703 var488 var2395!1) ; Statement: <com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern: com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern USE_GLOBAL_TEMP> = $r0 
(define-const var1440 var488 var488-init) ; Statement: $r5 = new com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern 
(define-const var1830 String "var t;") ; Statement: $r6 = "var t;" 
(assert true)
(define-const var2242 Int (length/-134980193 var1830)) ; Statement: $i9 = virtualinvoke $r6.<java.lang.String: int length()>() 
(define-const var3365 String "t=y.prototype;") ; Statement: $r7 = "t=y.prototype;" 
(assert true)
(define-const var3005 Int (length/-134980193 var3365)) ; Statement: $i8 = virtualinvoke $r7.<java.lang.String: int length()>() 
(define-const var2210 String "t.y=") ; Statement: $r8 = "t.y=" 
(assert true)
(define-const var679 Int (length/-134980193 var2210)) ; Statement: $i6 = virtualinvoke $r8.<java.lang.String: int length()>() 
(define-const var3679 String "x[p].y=") ; Statement: $r9 = "x[p].y=" 
(assert true)
(define-const var1323 Int (length/-134980193 var3679)) ; Statement: $i5 = virtualinvoke $r9.<java.lang.String: int length()>() 
(define-const var3671 Int (- var679 var1323)) ; Statement: $i7 = $i6 - $i5 
(assert true)
;(assert (<init>/-1048824105 var1440 "USE_CHUNK_TEMP" 1 var2242 var3005 var3671)) ; Statement: specialinvoke $r5.<com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern: void <init>(java.lang.String,int,int,int,int)>("USE_CHUNK_TEMP", 1, $i9, $i8, $i7) 

(declare-const var1440!1 var488)
(declare-const var3912 String)
(declare-const var3494 Int)
(declare-const var2242!1 Int)
(declare-const var3005!1 Int)
(declare-const var3671!1 Int)
(define-const var3472 var488 var1440!1) ; Statement: <com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern: com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern USE_CHUNK_TEMP> = $r5 
(define-const var3963 var488 var488-init) ; Statement: $r10 = new com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern 
(define-const var316 String "(function(t){})(y.prototype);") ; Statement: $r11 = "(function(t){})(y.prototype);" 
(assert true)
(define-const var224 Int (length/-134980193 var316)) ; Statement: $i13 = virtualinvoke $r11.<java.lang.String: int length()>() 
(define-const var102 String "t.y=") ; Statement: $r12 = "t.y=" 
(assert true)
(define-const var2774 Int (length/-134980193 var102)) ; Statement: $i11 = virtualinvoke $r12.<java.lang.String: int length()>() 
(define-const var2678 String "x.prototype.y=") ; Statement: $r13 = "x.prototype.y=" 
(assert true)
(define-const var2473 Int (length/-134980193 var2678)) ; Statement: $i10 = virtualinvoke $r13.<java.lang.String: int length()>() 
(define-const var3808 Int (- var2774 var2473)) ; Statement: $i12 = $i11 - $i10 
(assert true)
;(assert (<init>/-1048824105 var3963 "USE_IIFE" 2 0 var224 var3808)) ; Statement: specialinvoke $r10.<com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern: void <init>(java.lang.String,int,int,int,int)>("USE_IIFE", 2, 0, $i13, $i12) 

(declare-const var3963!1 var488)
(declare-const var1467 String)
(declare-const var677 Int)
(declare-const var906!1 Int)
(declare-const var224!1 Int)
(declare-const var3808!1 Int)
(define-const var139 var488 var3963!1) ; Statement: <com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern: com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern USE_IIFE> = $r10 
(define-const var2428 (Array Int var488) var488_$values/-854125665) ; Statement: $r14 = staticinvoke <com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern: com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern[] $values()>() 
(define-const var110 (Array Int var488) var2428) ; Statement: <com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern: com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern[] $VALUES> = $r14 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var488-init=([], com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern), length/-134980193=([java.lang.String], int), <init>/-1048824105=([com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern, java.lang.String, int, int, int, int], void), var488_$values/-854125665=([], com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern[])}
; {var488=com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern, var2395=$r0, var1798=$r1, var3854=$i4, var765=$r2, var3775=$i3, var716=$r3, var1426=$i1, var1050=$r4, var3290=$i0, var243=$i2, var400="USE_GLOBAL_TEMP", var906=0, var1703=<com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern: com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern USE_GLOBAL_TEMP>, var1440=$r5, var1830=$r6, var2242=$i9, var3365=$r7, var3005=$i8, var2210=$r8, var679=$i6, var3679=$r9, var1323=$i5, var3671=$i7, var3912="USE_CHUNK_TEMP", var3494=1, var3472=<com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern: com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern USE_CHUNK_TEMP>, var3963=$r10, var316=$r11, var224=$i13, var102=$r12, var2774=$i11, var2678=$r13, var2473=$i10, var3808=$i12, var1467="USE_IIFE", var677=2, var139=<com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern: com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern USE_IIFE>, var2428=$r14, var110=<com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern: com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern[] $VALUES>}
; {com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern=var488, $r0=var2395, $r1=var1798, $i4=var3854, $r2=var765, $i3=var3775, $r3=var716, $i1=var1426, $r4=var1050, $i0=var3290, $i2=var243, "USE_GLOBAL_TEMP"=var400, 0=var906, <com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern: com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern USE_GLOBAL_TEMP>=var1703, $r5=var1440, $r6=var1830, $i9=var2242, $r7=var3365, $i8=var3005, $r8=var2210, $i6=var679, $r9=var3679, $i5=var1323, $i7=var3671, "USE_CHUNK_TEMP"=var3912, 1=var3494, <com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern: com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern USE_CHUNK_TEMP>=var3472, $r10=var3963, $r11=var316, $i13=var224, $r12=var102, $i11=var2774, $r13=var2678, $i10=var2473, $i12=var3808, "USE_IIFE"=var1467, 2=var677, <com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern: com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern USE_IIFE>=var139, $r14=var2428, <com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern: com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern[] $VALUES>=var110}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 11}
;stmts $r0 = new com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern;	$r1 = "var t;";	$i4 = virtualinvoke $r1.<java.lang.String: int length()>();	$r2 = "t=y.prototype;";	$i3 = virtualinvoke $r2.<java.lang.String: int length()>();	$r3 = "t.y=";	$i1 = virtualinvoke $r3.<java.lang.String: int length()>();	$r4 = "x[p].y=";	$i0 = virtualinvoke $r4.<java.lang.String: int length()>();	$i2 = $i1 - $i0;	specialinvoke $r0.<com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern: void <init>(java.lang.String,int,int,int,int)>("USE_GLOBAL_TEMP", 0, $i4, $i3, $i2);	<com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern: com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern USE_GLOBAL_TEMP> = $r0;	$r5 = new com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern;	$r6 = "var t;";	$i9 = virtualinvoke $r6.<java.lang.String: int length()>();	$r7 = "t=y.prototype;";	$i8 = virtualinvoke $r7.<java.lang.String: int length()>();	$r8 = "t.y=";	$i6 = virtualinvoke $r8.<java.lang.String: int length()>();	$r9 = "x[p].y=";	$i5 = virtualinvoke $r9.<java.lang.String: int length()>();	$i7 = $i6 - $i5;	specialinvoke $r5.<com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern: void <init>(java.lang.String,int,int,int,int)>("USE_CHUNK_TEMP", 1, $i9, $i8, $i7);	<com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern: com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern USE_CHUNK_TEMP> = $r5;	$r10 = new com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern;	$r11 = "(function(t){})(y.prototype);";	$i13 = virtualinvoke $r11.<java.lang.String: int length()>();	$r12 = "t.y=";	$i11 = virtualinvoke $r12.<java.lang.String: int length()>();	$r13 = "x.prototype.y=";	$i10 = virtualinvoke $r13.<java.lang.String: int length()>();	$i12 = $i11 - $i10;	specialinvoke $r10.<com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern: void <init>(java.lang.String,int,int,int,int)>("USE_IIFE", 2, 0, $i13, $i12);	<com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern: com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern USE_IIFE> = $r10;	$r14 = staticinvoke <com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern: com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern[] $values()>();	<com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern: com.google.javascript.jscomp.ExtractPrototypeMemberDeclarations$Pattern[] $VALUES> = $r14;	return
;block_num 1
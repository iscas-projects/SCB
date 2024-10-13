(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var456 0)
(declare-sort var2128 0)
(declare-sort var3906 0)
(declare-sort var1314 0)
(declare-sort var1048 0)
(declare-sort var731 0)
(declare-sort var321 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1128186653 (var2128) String)
(declare-fun var3906_extName/464649714 (String) String)
(define-fun toUpperCase/1156088314 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))
(declare-fun var3906_getInputStream/2539569 (var2128) var731)
(declare-fun addPicture/672440899 (var456 var321 var1048 String Int Int) var456)
(declare-fun cast-from-var731-to-var321 (var731) var321)
(declare-const null-var456 var456)
(declare-const null-var2128 var2128)
(declare-const null-Int Int)
(declare-const null-var1314 var1314)
(declare-const var1048-JPEG var1048)
(declare-const var1550 var456) ; Statement: r4 := @this: cn.hutool.poi.word.Word07Writer 
(assert (not (= var1550 null-var456)))
(declare-const var2772 var2128) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var2772 null-var2128)))
(declare-const var911 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var911 null-Int)))
(declare-const var3520 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3520 null-Int)))
(assert true)
(define-const var3608 String (getName/1128186653 var2772)) ; Statement: r1 = virtualinvoke r0.<java.io.File: java.lang.String getName()>() 
(define-const var3026 String (var3906_extName/464649714 var3608)) ; Statement: $r2 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String extName(java.lang.String)>(r1) 
(assert true)
(define-const var907 String (toUpperCase/1156088314 var3026)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toUpperCase()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1750 var1314) ; Statement: $r7 := @caughtexception 
(assert (not (= var1750 null-var1314)))
(define-const var265 var1048 var1048-JPEG) ; Statement: r8 = <cn.hutool.poi.word.PicType: cn.hutool.poi.word.PicType JPEG> 
(assert true) ; Non Conditional
(define-const var527 var731 (var3906_getInputStream/2539569 var2772)) ; Statement: $r5 = staticinvoke <cn.hutool.core.io.FileUtil: java.io.BufferedInputStream getInputStream(java.io.File)>(r0) 
(assert true)
(define-const var589 var456 (addPicture/672440899 var1550 (cast-from-var731-to-var321 var527) var265 var3608 var911 var3520)) ; Statement: $r6 = virtualinvoke r4.<cn.hutool.poi.word.Word07Writer: cn.hutool.poi.word.Word07Writer addPicture(java.io.InputStream,cn.hutool.poi.word.PicType,java.lang.String,int,int)>($r5, r8, r1, i0, i1) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1128186653=([java.io.File], java.lang.String), var3906_extName/464649714=([java.lang.String], java.lang.String), toUpperCase/1156088314=([java.lang.String], java.lang.String), var3906_getInputStream/2539569=([java.io.File], java.io.BufferedInputStream), addPicture/672440899=([cn.hutool.poi.word.Word07Writer, java.io.InputStream, cn.hutool.poi.word.PicType, java.lang.String, int, int], cn.hutool.poi.word.Word07Writer), cast-from-var731-to-var321=([java.io.BufferedInputStream], java.io.InputStream)}
; {var456=cn.hutool.poi.word.Word07Writer, var1550=r4, var2128=java.io.File, var2772=r0, var911=i0, var3520=i1, var3608=r1, var3906=cn.hutool.core.io.FileUtil, var3026=$r2, var907=r3, var1314=java.lang.IllegalArgumentException, var1750=$r7, var1048=cn.hutool.poi.word.PicType, var265=r8, var731=java.io.BufferedInputStream, var527=$r5, var321=java.io.InputStream, var589=$r6}
; {cn.hutool.poi.word.Word07Writer=var456, r4=var1550, java.io.File=var2128, r0=var2772, i0=var911, i1=var3520, r1=var3608, cn.hutool.core.io.FileUtil=var3906, $r2=var3026, r3=var907, java.lang.IllegalArgumentException=var1314, $r7=var1750, cn.hutool.poi.word.PicType=var1048, r8=var265, java.io.BufferedInputStream=var731, $r5=var527, java.io.InputStream=var321, $r6=var589}
;seq <java.lang.String: java.lang.String toUpperCase()>
;cnt {"<java.lang.String: java.lang.String toUpperCase()>": 1}
;stmts r4 := @this: cn.hutool.poi.word.Word07Writer;	r0 := @parameter0: java.io.File;	i0 := @parameter1: int;	i1 := @parameter2: int;	r1 = virtualinvoke r0.<java.io.File: java.lang.String getName()>();	$r2 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String extName(java.lang.String)>(r1);	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toUpperCase()>();	$r7 := @caughtexception;	r8 = <cn.hutool.poi.word.PicType: cn.hutool.poi.word.PicType JPEG>;	$r5 = staticinvoke <cn.hutool.core.io.FileUtil: java.io.BufferedInputStream getInputStream(java.io.File)>(r0);	$r6 = virtualinvoke r4.<cn.hutool.poi.word.Word07Writer: cn.hutool.poi.word.Word07Writer addPicture(java.io.InputStream,cn.hutool.poi.word.PicType,java.lang.String,int,int)>($r5, r8, r1, i0, i1);	return $r6
;block_num 3
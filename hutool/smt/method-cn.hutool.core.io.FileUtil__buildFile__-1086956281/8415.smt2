(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2571 0)
(declare-sort var176 0)
(declare-sort var2655 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun var2655_isWindows/1322350139 () Bool)
(declare-fun var2571-init () var2571)
(declare-fun <init>/-1833447926 (var2571 var2571 String) void)
(declare-const null-var2571 var2571)
(declare-const null-String String)
(declare-const var3224 var2571) ; Statement: r5 := @parameter0: java.io.File 
(assert (not (= var3224 null-var2571)))
(declare-const var174 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var174 null-String)))
(assert true)
(define-const var1492 String (replace/1524665721 var174 92 47)) ; Statement: r7 = virtualinvoke r6.<java.lang.String: java.lang.String replace(char,char)>(92, 47) 
(define-const var3327 Bool var2655_isWindows/1322350139) ; Statement: $z0 = staticinvoke <cn.hutool.core.io.FileUtil: boolean isWindows()>() 
 ; Statement: if 0 != $z0 goto $r8 = new java.io.File 
(assert (not (= 0 (ite var3327 1 0)))) ; Cond: 0 != $z0 
(define-const var3680 var2571 var2571-init) ; Statement: $r8 = new java.io.File 
(assert true)
;(assert (<init>/-1833447926 var3680 var3224 var1492)) ; Statement: specialinvoke $r8.<java.io.File: void <init>(java.io.File,java.lang.String)>(r5, r7) 

(declare-const var3680!1 var2571)
(declare-const var3224!1 var2571)
(declare-const var1492!1 String)
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String), var2655_isWindows/1322350139=([], boolean), var2571-init=([], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void)}
; {var2571=java.io.File, var3224=r5, var174=r6, var176=null_type, var1492=r7, var2655=cn.hutool.core.io.FileUtil, var3327=$z0, var3680=$r8}
; {java.io.File=var2571, r5=var3224, r6=var174, null_type=var176, r7=var1492, cn.hutool.core.io.FileUtil=var2655, $z0=var3327, $r8=var3680}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r5 := @parameter0: java.io.File;	r6 := @parameter1: java.lang.String;	r7 = virtualinvoke r6.<java.lang.String: java.lang.String replace(char,char)>(92, 47);	$z0 = staticinvoke <cn.hutool.core.io.FileUtil: boolean isWindows()>();	if 0 != $z0 goto $r8 = new java.io.File;	$r8 = new java.io.File;	specialinvoke $r8.<java.io.File: void <init>(java.io.File,java.lang.String)>(r5, r7);	return $r8
;block_num 2
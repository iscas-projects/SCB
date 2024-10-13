(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3969 0)
(declare-sort var1417 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1417_stripJsExtension/-607999262 (String) String)
(declare-fun replaceFirst/750800361 (String String String) String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-String String)
(declare-const var1175 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1175 null-String)))
(define-const var3012 String (var1417_stripJsExtension/-607999262 var1175)) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.deps.ModuleNames: java.lang.String stripJsExtension(java.lang.String)>(r0) 
(assert true)
(define-const var1086 String (replaceFirst/750800361 var3012 "^\u005c./" "")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("^\\./", "") 
(assert (= (replaceFirst/750800361 var3012 "^\u005c./" "") (str.replace_re var3012 (str.to_re "^./") "")))
(assert true)
(define-const var321 String (replace/2138489945 var1086 (cast-from-String-to-String "/") (cast-from-String-to-String "$"))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("/", "$") 
(assert true)
(define-const var3485 String (replace/1524665721 var321 92 36)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(char,char)>(92, 36) 
(assert true)
(define-const var1327 String (replace/1524665721 var3485 64 36)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(64, 36) 
(assert true)
(define-const var415 String (replace/1524665721 var1327 43 36)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.String: java.lang.String replace(char,char)>(43, 36) 
(assert true)
(define-const var3184 String (replace/1524665721 var415 45 95)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: java.lang.String replace(char,char)>(45, 95) 
(assert true)
(define-const var1164 String (replace/1524665721 var3184 58 95)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.String: java.lang.String replace(char,char)>(58, 95) 
(assert true)
(define-const var3739 String (replace/1524665721 var1164 46 95)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.String: java.lang.String replace(char,char)>(46, 95) 
(assert true)
(define-const var1802 String (replace/2138489945 var3739 (cast-from-String-to-String "%20") (cast-from-String-to-String "_"))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("%20", "_") 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var1417_stripJsExtension/-607999262=([java.lang.String], java.lang.String), replaceFirst/750800361=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var1175=r0, var3969=null_type, var1417=com.google.javascript.jscomp.deps.ModuleNames, var3012=$r1, var1086=$r2, var321=$r3, var3485=$r4, var1327=$r5, var415=$r6, var3184=$r7, var1164=$r8, var3739=$r9, var1802=$r10}
; {r0=var1175, null_type=var3969, com.google.javascript.jscomp.deps.ModuleNames=var1417, $r1=var3012, $r2=var1086, $r3=var321, $r4=var3485, $r5=var1327, $r6=var415, $r7=var3184, $r8=var1164, $r9=var3739, $r10=var1802}
;seq <java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>": 1,"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 2,"<java.lang.String: java.lang.String replace(char,char)>": 6}
;stmts r0 := @parameter0: java.lang.String;	$r1 = staticinvoke <com.google.javascript.jscomp.deps.ModuleNames: java.lang.String stripJsExtension(java.lang.String)>(r0);	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String replaceFirst(java.lang.String,java.lang.String)>("^\\./", "");	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("/", "$");	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(char,char)>(92, 36);	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(64, 36);	$r6 = virtualinvoke $r5.<java.lang.String: java.lang.String replace(char,char)>(43, 36);	$r7 = virtualinvoke $r6.<java.lang.String: java.lang.String replace(char,char)>(45, 95);	$r8 = virtualinvoke $r7.<java.lang.String: java.lang.String replace(char,char)>(58, 95);	$r9 = virtualinvoke $r8.<java.lang.String: java.lang.String replace(char,char)>(46, 95);	$r10 = virtualinvoke $r9.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("%20", "_");	return $r10
;block_num 1
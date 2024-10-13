(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1782 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1689018267 (var1782) String)
(define-fun toUpperCase/1156088314 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1782 var1782)
(declare-const var3985 var1782) ; Statement: r1 := @this: org.javacc.jjtree.ASTNodeDescriptor 
(assert (not (= var3985 null-var1782)))
(define-const var3997 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3997)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3997!1 String)
(assert (= var3997!1 ""))
(assert true)
(define-const var1602 String (append/672562846 var3997!1 "JJT")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JJT") 
(declare-const var3997!2 String)
(assert (= var3997!2 (str.++ var3997!1 "JJT")))
(define-const var2365 String (name/-1689018267 var3985)) ; Statement: $r2 = r1.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String name> 
(assert true)
(define-const var585 String (toUpperCase/1156088314 var2365)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toUpperCase()>() 
(assert true)
(define-const var628 String (replace/1524665721 var585 46 95)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(char,char)>(46, 95) 
(assert true)
(define-const var3930 String (append/672562846 var1602 var628)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1602!1 String)
(assert (= var1602!1 (str.++ var1602 var628)))
(assert true)
(define-const var2656 String (toString/-2075883882 var3930)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-1689018267=([org.javacc.jjtree.ASTNodeDescriptor], java.lang.String), toUpperCase/1156088314=([java.lang.String], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1782=org.javacc.jjtree.ASTNodeDescriptor, var3985=r1, var3997=$r0, var1602=$r5, var2365=$r2, var585=$r3, var628=$r4, var3930=$r6, var2656=$r7}
; {org.javacc.jjtree.ASTNodeDescriptor=var1782, r1=var3985, $r0=var3997, $r5=var1602, $r2=var2365, $r3=var585, $r4=var628, $r6=var3930, $r7=var2656}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String toUpperCase()>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String toUpperCase()>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.javacc.jjtree.ASTNodeDescriptor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JJT");	$r2 = r1.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String name>;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toUpperCase()>();	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replace(char,char)>(46, 95);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1
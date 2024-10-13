(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3738 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sort/-41019612 (var3738) Int)
(declare-fun String-init () String)
(declare-fun buf/-41019612 (var3738) (Array Int Int))
(declare-fun off/-41019612 (var3738) Int)
(declare-fun len/-41019612 (var3738) Int)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-var3738 var3738)
(declare-const var3390 var3738) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.Type 
(assert (not (= var3390 null-var3738)))
(define-const var2035 Int (sort/-41019612 var3390)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.Type: int sort> 
 ; Statement: tableswitch($i0) {     case 0: goto return "void";     case 1: goto return "boolean";     case 2: goto return "char";     case 3: goto return "byte";     case 4: goto return "short";     case 5: goto return "int";     case 6: goto return "float";     case 7: goto return "long";     case 8: goto return "double";     case 9: goto $r8 = new java.lang.StringBuilder;     case 10: goto $r9 = new java.lang.String;     default: goto return null; } 
(assert (and (= var2035 10) (and (not (= var2035 9)) (and (not (= var2035 8)) (and (not (= var2035 7)) (and (not (= var2035 6)) (and (not (= var2035 5)) (and (not (= var2035 4)) (and (not (= var2035 3)) (and (not (= var2035 2)) (and (not (= var2035 1)) (and (not (= var2035 0)) true)))))))))))) ; Intersect: Cond: $i0 == 10  and Intersect: Negate: Cond: $i0 == 9   and Intersect: Negate: Cond: $i0 == 8   and Intersect: Negate: Cond: $i0 == 7   and Intersect: Negate: Cond: $i0 == 6   and Intersect: Negate: Cond: $i0 == 5   and Intersect: Negate: Cond: $i0 == 4   and Intersect: Negate: Cond: $i0 == 3   and Intersect: Negate: Cond: $i0 == 2   and Intersect: Negate: Cond: $i0 == 1   and Intersect: Negate: Cond: $i0 == 0   and Non Conditional           
(define-const var1007 String String-init) ; Statement: $r9 = new java.lang.String 
(define-const var1941 (Array Int Int) (buf/-41019612 var3390)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.Type: char[] buf> 
(define-const var212 Int (off/-41019612 var3390)) ; Statement: $i2 = r0.<jdk.internal.org.objectweb.asm.Type: int off> 
(define-const var266 Int (len/-41019612 var3390)) ; Statement: $i1 = r0.<jdk.internal.org.objectweb.asm.Type: int len> 
(assert true)
;(assert (<init>/-253222812 var1007 var1941 var212 var266)) ; Statement: specialinvoke $r9.<java.lang.String: void <init>(char[],int,int)>($r2, $i2, $i1) 

(declare-const var1007!1 String)
(declare-const var1941!1 (Array Int Int))
(declare-const var212!1 Int)
(declare-const var266!1 Int)
(assert true)
(define-const var3234 String (replace/1524665721 var1007!1 47 46)) ; Statement: $r3 = virtualinvoke $r9.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {sort/-41019612=([jdk.internal.org.objectweb.asm.Type], int), String-init=([], java.lang.String), buf/-41019612=([jdk.internal.org.objectweb.asm.Type], char[]), off/-41019612=([jdk.internal.org.objectweb.asm.Type], int), len/-41019612=([jdk.internal.org.objectweb.asm.Type], int), <init>/-253222812=([java.lang.String, char[], int, int], void), replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var3738=jdk.internal.org.objectweb.asm.Type, var3390=r0, var2035=$i0, var1007=$r9, var1941=$r2, var212=$i2, var266=$i1, var3234=$r3}
; {jdk.internal.org.objectweb.asm.Type=var3738, r0=var3390, $i0=var2035, $r9=var1007, $r2=var1941, $i2=var212, $i1=var266, $r3=var3234}
;seq <java.lang.String: void <init>(char[],int,int)>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.Type;	$i0 = r0.<jdk.internal.org.objectweb.asm.Type: int sort>;	tableswitch($i0) {     case 0: goto return "void";     case 1: goto return "boolean";     case 2: goto return "char";     case 3: goto return "byte";     case 4: goto return "short";     case 5: goto return "int";     case 6: goto return "float";     case 7: goto return "long";     case 8: goto return "double";     case 9: goto $r8 = new java.lang.StringBuilder;     case 10: goto $r9 = new java.lang.String;     default: goto return null; };	$r9 = new java.lang.String;	$r2 = r0.<jdk.internal.org.objectweb.asm.Type: char[] buf>;	$i2 = r0.<jdk.internal.org.objectweb.asm.Type: int off>;	$i1 = r0.<jdk.internal.org.objectweb.asm.Type: int len>;	specialinvoke $r9.<java.lang.String: void <init>(char[],int,int)>($r2, $i2, $i1);	$r3 = virtualinvoke $r9.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	return $r3
;block_num 2
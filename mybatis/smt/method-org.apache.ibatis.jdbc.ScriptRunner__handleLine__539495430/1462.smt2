(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var793 0)
(declare-sort var2305 0)
(declare-sort var3767 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun lineIsComment/1063150063 (var793 String) Bool)
(declare-fun commandReadyToExecute/-105850802 (var793 String) Bool)
(declare-fun delimiter/-1637780756 (var793) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(declare-fun append/50905802 (String String Int Int) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun println/148980183 (var793 var3767) void)
(declare-fun cast-from-String-to-var3767 (String) var3767)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun executeStatement/-2141300078 (var793 String) void)
(declare-fun setLength/1276735992 (String Int) void)
(declare-const null-var793 var793)
(declare-const null-String String)
(declare-const var793-LINE_SEPARATOR String)
(declare-const var53 var793) ; Statement: r2 := @this: org.apache.ibatis.jdbc.ScriptRunner 
(assert (not (= var53 null-var793)))
(declare-const var2612 String) ; Statement: r3 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2612 null-String)))
(declare-const var2393 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2393 null-String)))
(assert true)
(define-const var2250 String (trim/-847153721 var2393)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var625 Bool (lineIsComment/1063150063 var53 var2250)) ; Statement: $z0 = specialinvoke r2.<org.apache.ibatis.jdbc.ScriptRunner: boolean lineIsComment(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto $z1 = specialinvoke r2.<org.apache.ibatis.jdbc.ScriptRunner: boolean commandReadyToExecute(java.lang.String)>(r1) 
(assert (= (ite var625 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2255 Bool (commandReadyToExecute/-105850802 var53 var2250)) ; Statement: $z1 = specialinvoke r2.<org.apache.ibatis.jdbc.ScriptRunner: boolean commandReadyToExecute(java.lang.String)>(r1) 
 ; Statement: if $z1 == 0 goto $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (= (ite var2255 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1422 String (delimiter/-1637780756 var53)) ; Statement: $r5 = r2.<org.apache.ibatis.jdbc.ScriptRunner: java.lang.String delimiter> 
(assert true)
(define-const var3190 Int (lastIndexOf/-618837785 var2393 var1422)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>($r5) 
(assert true)
;(assert (append/50905802 var2612 (cast-from-String-to-String var2393) 0 var3190)) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, $i1) 
(declare-const var2612!1 String)
(assert (str.prefixof var2612 var2612!1))
(define-const var1778 String var793-LINE_SEPARATOR) ; Statement: $r6 = <org.apache.ibatis.jdbc.ScriptRunner: java.lang.String LINE_SEPARATOR> 
(assert true)
;(assert (append/672562846 var2612!1 var1778)) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2612!2 String)
(assert (= var2612!2 (str.++ var2612!1 var1778)))
(assert true)
;(assert (println/148980183 var53 (cast-from-String-to-var3767 var2612!2))) ; Statement: specialinvoke r2.<org.apache.ibatis.jdbc.ScriptRunner: void println(java.lang.Object)>(r3) 

(declare-const var53!1 var793)
(declare-const var2612!3 String)
(assert true)
(define-const var1061 String (toString/-2075883882 var2612!3)) ; Statement: $r7 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (executeStatement/-2141300078 var53!1 var1061)) ; Statement: specialinvoke r2.<org.apache.ibatis.jdbc.ScriptRunner: void executeStatement(java.lang.String)>($r7) 

(declare-const var53!2 var793)
(declare-const var1061!1 String)
(assert true)
;(assert (setLength/1276735992 var2612!3 0)) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var2612!4 String)
(declare-const var1450 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), lineIsComment/1063150063=([org.apache.ibatis.jdbc.ScriptRunner, java.lang.String], boolean), commandReadyToExecute/-105850802=([org.apache.ibatis.jdbc.ScriptRunner, java.lang.String], boolean), delimiter/-1637780756=([org.apache.ibatis.jdbc.ScriptRunner], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), println/148980183=([org.apache.ibatis.jdbc.ScriptRunner, java.lang.Object], void), cast-from-String-to-var3767=([java.lang.StringBuilder], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), executeStatement/-2141300078=([org.apache.ibatis.jdbc.ScriptRunner, java.lang.String], void), setLength/1276735992=([java.lang.StringBuilder, int], void)}
; {var793=org.apache.ibatis.jdbc.ScriptRunner, var53=r2, var2612=r3, var2393=r0, var2305=null_type, var2250=r1, var625=$z0, var2255=$z1, var1422=$r5, var3190=$i1, var1778=$r6, var3767=java.lang.Object, var1061=$r7, var1450=0}
; {org.apache.ibatis.jdbc.ScriptRunner=var793, r2=var53, r3=var2612, r0=var2393, null_type=var2305, r1=var2250, $z0=var625, $z1=var2255, $r5=var1422, $i1=var3190, $r6=var1778, java.lang.Object=var3767, $r7=var1061, 0=var1450}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void setLength(int)>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuilder: void setLength(int)>": 1}
;stmts r2 := @this: org.apache.ibatis.jdbc.ScriptRunner;	r3 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$z0 = specialinvoke r2.<org.apache.ibatis.jdbc.ScriptRunner: boolean lineIsComment(java.lang.String)>(r1);	if $z0 == 0 goto $z1 = specialinvoke r2.<org.apache.ibatis.jdbc.ScriptRunner: boolean commandReadyToExecute(java.lang.String)>(r1);	$z1 = specialinvoke r2.<org.apache.ibatis.jdbc.ScriptRunner: boolean commandReadyToExecute(java.lang.String)>(r1);	if $z1 == 0 goto $i0 = virtualinvoke r1.<java.lang.String: int length()>();	$r5 = r2.<org.apache.ibatis.jdbc.ScriptRunner: java.lang.String delimiter>;	$i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>($r5);	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, $i1);	$r6 = <org.apache.ibatis.jdbc.ScriptRunner: java.lang.String LINE_SEPARATOR>;	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	specialinvoke r2.<org.apache.ibatis.jdbc.ScriptRunner: void println(java.lang.Object)>(r3);	$r7 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r2.<org.apache.ibatis.jdbc.ScriptRunner: void executeStatement(java.lang.String)>($r7);	virtualinvoke r3.<java.lang.StringBuilder: void setLength(int)>(0);	goto [?= return];	return
;block_num 4
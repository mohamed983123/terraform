



output "publicsg" {
  
  value = aws_security_group.allow_ssh_public.id
}
output "privitesg" {
 
  value = aws_security_group.allow_sshandport.id
}



output "sub4" {

value = aws_subnet.sub4.id


}


output "sub2" {

value = aws_subnet.sub2.id


}


from django import forms

class ContactForm(forms.Form):
    nome = forms.CharField(max_length=130)
    email = forms.EmailField()
    assunto = forms.CharField(max_length=30)
    mensagem = forms.CharField(widget=forms.Textarea)
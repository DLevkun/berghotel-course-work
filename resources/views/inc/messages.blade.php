@if($errors->any())
    <ul>
        <div class="left text simple_text room-title">
            @foreach($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </div>
    </ul>
@endif

@if(session('success')) 
    <div class="left text simple_text">
        {{ session('success') }}
    </div>
@endif
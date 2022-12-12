import React, {useEffect, useState} from 'react'

function App() {
    return (
        <div>
            <div style={{borderWidth: '2px', borderStyle: 'none', borderBottomStyle: 'solid'}}>
                <nav className="navbar navbar-light navbar-expand-md py-3" style={{border: '2px none #094067'}}>
                    <div className="container"><a className="navbar-brand d-flex align-items-center" href="#"><span className="fs-4" style={{color: '#5f6c7b'}}>Admin</span></a><button data-bs-toggle="collapse" className="navbar-toggler" data-bs-target="#navcol-1"><span className="visually-hidden">Toggle navigation</span><span className="navbar-toggler-icon" /></button>
                        <div className="collapse navbar-collapse" id="navcol-1">
                            <ul className="navbar-nav me-auto">
                                <li className="nav-item" />
                                <li className="nav-item" />
                                <li className="nav-item" />
                            </ul><button className="btn btn-lg" type="button" style={{color: '#5f6c7b'}}>Logout</button>
                        </div>
                    </div>
                </nav>
            </div>
            <section>
                <div>
                    <div className="border-1 d-grid d-md-flex flex-column justify-content-center align-items-center align-content-center justify-content-md-center align-items-md-center">
                        <h1 className="display-3 fw-bolder d-flex justify-content-center" style={{borderStyle: 'none', borderBottomWidth: '1px', borderBottomStyle: 'none', color: '#094067'}}>List of Quizzes</h1><button className="btn btn-primary border rounded-pill" type="button" style={{paddingRight: '43px', paddingLeft: '43px', marginLeft: '-3px', background: '#3da9fc'}}><strong>Create</strong></button>
                    </div>
                    <div style={{marginTop: '10px', marginRight: '10px', marginBottom: '10px', marginLeft: '10px', borderWidth: '0px', borderStyle: 'inset'}}>
                        <div style={{paddingTop: '0px', margin: '0px', marginTop: '10px', marginRight: '10px', marginBottom: '10px', marginLeft: '10px', borderWidth: '1px', borderStyle: 'outset', borderBottomWidth: '0px'}}>
                            <nav className="navbar navbar-light navbar-expand-md border-3 py-3" style={{paddingTop: '16px', paddingRight: '0px', borderStyle: 'none', borderTopWidth: '1px', borderTopStyle: 'none', borderRightWidth: '1px', borderRightStyle: 'none', borderBottomWidth: '1px', borderBottomStyle: 'none', borderLeftWidth: '1px', borderLeftStyle: 'none'}}>
                                <div className="container"><a className="navbar-brand d-flex align-items-center" href="#"><span>Quiz 1</span></a><button data-bs-toggle="collapse" className="navbar-toggler" data-bs-target="#navcol-3"><span className="visually-hidden">Toggle navigation</span><span className="navbar-toggler-icon d-block" /></button>
                                    <div className="collapse navbar-collapse" id="navcol-3" style={{paddingLeft: '0px'}}>
                                        <ul className="navbar-nav me-auto">
                                            <li className="nav-item" />
                                            <li className="nav-item" />
                                            <li className="nav-item" />
                                        </ul>
                                        <div className="dropdown" style={{paddingLeft: '0px'}}><a className="dropdown-toggle d-none d-print-block float-end d-sm-none d-md-block d-lg-block d-xl-block d-xxl-block" aria-expanded="false" data-bs-toggle="dropdown" href="#" style={{paddingRight: '0px', fontSize: '20px', marginLeft: '0px', paddingLeft: '0px'}}>Options</a>
                                            <div className="dropdown-menu text-start float-end float-sm-end float-md-end"><a className="dropdown-item" href="#">Edit</a><a className="dropdown-item" href="#">Delete</a><a className="dropdown-item" href="#">Authenticate</a></div>
                                        </div>
                                    </div>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    );
}

export default App
